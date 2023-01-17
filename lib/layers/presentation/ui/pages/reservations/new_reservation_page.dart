import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smash/core/util/dialogs.dart';
import 'package:smash/layers/domain/entities/available_court_entity.dart';
import 'package:smash/layers/domain/entities/court_entity_entity.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/presentation/controller/court_controller.dart';
import 'package:smash/layers/presentation/controller/reservation_controller.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class NewReservationPage extends StatefulWidget {
  const NewReservationPage({Key? key}) : super(key: key);

  @override
  State<NewReservationPage> createState() => _NewReservationPageState();
}

class _NewReservationPageState extends State<NewReservationPage> {
  final _courtController = GetIt.I.get<CourtController>();
  final _reservationController = GetIt.I.get<ReservationController>();

  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Reserva"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Defina o Dia",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              TableCalendar(
                firstDay: DateTime.now(),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = selectedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Text(
                  "Defina a Quadra e Hora",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    FutureBuilder(
                      future: _courtController.getAvailableCourt(_selectedDay),
                      builder: (futureContext, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else {
                          List<AvailableCourtEntity> availableCourtList =
                              snapshot.data;
                          return ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: availableCourtList.length,
                            itemBuilder: (BuildContext c, int index) {
                              return _buildContainerAvailableCourt(
                                context,
                                availableCourtList[index],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerAvailableCourt(
      context, AvailableCourtEntity availableCourtEntity) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.grey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                      height: 75,
                      width: 55,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              availableCourtEntity.court.number.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 75,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              availableCourtEntity.court.type,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.people,
                                  size: 20,
                                ),
                                Container(
                                  width: 5,
                                ),
                                Text(
                                  availableCourtEntity.court.capacity
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                              child: Row(
                                children: [
                                  ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount:
                                        availableCourtEntity.hours.length,
                                    itemBuilder: (BuildContext c, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          showDialogConfirmReservation(
                                            context,
                                            availableCourtEntity.court,
                                            availableCourtEntity.hours[index],
                                            Provider.of<UserProvider>(
                                              context,
                                              listen: false,
                                            ).userLogged,
                                          );
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.amber,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  5,
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Text(availableCourtEntity
                                                  .hours[index]),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Container(
              color: Colors.grey[200],
              height: 2,
            ),
          )
        ],
      ),
    );
  }

  Color _getColorDateContainer(String status) {
    if (status == "RESERVA_REALIZADA") {
      return Colors.amber;
    } else if (status == "RESERVA_EXECULTADA") {
      return Colors.green;
    } else if (status == "PAGAMENTO_PENDENTE") {
      return Colors.grey;
    } else if (status == "RESERVA_CANCELADA") {
      return Colors.red;
    }

    return Colors.white;
  }

  String _getTextStatus(String status) {
    if (status == "RESERVA_REALIZADA") {
      return "Reserva realizada";
    } else if (status == "RESERVA_EXECULTADA") {
      return "Reserva Utilizada";
    } else if (status == "PAGAMENTO_PENDENTE") {
      return "Pagamento Pendente";
    } else if (status == "RESERVA_CANCELADA") {
      return "Reserva Cancelada";
    }

    return "";
  }

  showDialogConfirmReservation(
    context,
    CourtEntity courtEntity,
    String hour,
    UserEntity userEntity,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Voltar",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                final reservationRequest = ReservationRequestEntity(
                  courtEntity: courtEntity,
                  hour: hour,
                  userEntity: userEntity,
                );

                Dialogs.showDialogProcessing(ctx);

                await _reservationController.requestNewReservation(
                  reservationRequest,
                );

                Navigator.pop(ctx);
                ctx.push('/reservations/detail');
              },
              child: const Text(
                "Confirmar",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
          content: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // The loading indicator
                Text(
                  "Confirmação de Reserva",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
                Container(
                  height: 5,
                ),
                const Text(
                  "Quadra / Hora / Preço",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 45,
                      color: Colors.grey[700],
                    ),
                    Container(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Quadra",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          courtEntity.number.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_month,
                        size: 45, color: Colors.grey[700]),
                    Container(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hora",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          hour,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.price_change,
                      size: 45,
                      color: Colors.grey[700],
                    ),
                    Container(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Preço",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "R\$ 70,00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // The background color
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
