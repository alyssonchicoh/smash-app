import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smash/core/util/dialogs.dart';
import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/presentation/controller/reservation_controller.dart';
import 'package:smash/layers/presentation/ui/widgets/app/drawer_widget.dart';

class ReservationDetailPage extends StatefulWidget {
  ReservationDetailPage({Key? key}) : super(key: key);

  @override
  State<ReservationDetailPage> createState() => _ReservationDetailPageState();
}

class _ReservationDetailPageState extends State<ReservationDetailPage> {
  final _reservationController = GetIt.I.get<ReservationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes da Reserva"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const DrawerWidget(),
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
          future: _reservationController.getReservationById(1),
          builder: (futureContext, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              ReservationDetailEntity reservationDetail = snapshot.data;

              return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          reservationDetail
                                              .reservationEntity.status,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red[700]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green[700],
                                          textStyle: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                        onPressed: () async {},
                                        child: const Text(
                                          'Pagar',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ResponsiveGridList(
                                shrinkWrap: true,
                                horizontalGridSpacing: 10,
                                horizontalGridMargin: 10,
                                verticalGridMargin: 10,
                                minItemWidth: 400,

                                minItemsPerRow: 4,
                                maxItemsPerRow: 4,
                                children: [
                                  _buildContainerInformation(
                                    Icons.calendar_month,
                                    "Data",
                                    reservationDetail
                                        .reservationEntity.formattedData,
                                  ),
                                  _buildContainerInformation(
                                    Icons.punch_clock,
                                    "Hora",
                                    reservationDetail.hour,
                                  ),
                                  _buildContainerInformation(
                                    Icons.location_pin,
                                    "Quadra",
                                    reservationDetail.courtNumber,
                                  ),
                                  _buildContainerInformation(
                                    Icons.people,
                                    "Time",
                                    reservationDetail.persons.length
                                            .toString() +
                                        " / " +
                                        reservationDetail.courtCapacity
                                            .toString(),
                                  ),
                                ], // The list of widgets in the list
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          "Convidados",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green[700],
                                          textStyle: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                        onPressed: () async {
                                          Share.share(
                                              "[SMASH APP] Você foi convidado por Alysson Chicó, para uma partida de Beach tennis.\n\nConfirme sua presença no link abaixo: \n\nwwww.smash.com.br/checkin");
                                        },
                                        child: const Text(
                                          'Adicionar',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    for (var personReservationEntity
                                        in reservationDetail.persons)
                                      Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30.0,
                                                    backgroundImage: NetworkImage(
                                                        personReservationEntity
                                                            .urlPhoto),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                  ),
                                                  Container(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        personReservationEntity
                                                            .name,
                                                        style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        personReservationEntity
                                                            .status,
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: personReservationEntity
                                                                        .status ==
                                                                    "Aguardando Confirmação"
                                                                ? Colors.grey
                                                                : Colors.green),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              GestureDetector(
                                                onTap: () async {
                                                  Dialogs.showDialogProcessing(
                                                      context);
                                                  _reservationController
                                                      .removePerson(
                                                          personReservationEntity
                                                              .id)
                                                      .then(
                                                        (value) => {
                                                          Navigator.pop(
                                                            context,
                                                          ),
                                                          reservationDetail
                                                              .persons
                                                              .remove(
                                                                  personReservationEntity)
                                                        },
                                                      );
                                                },
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red[400],
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Container(
                                              height: 1,
                                              color: Colors.grey[200],
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }

  _buildContainerInformation(IconData icon, String titulo, String information) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            FittedBox(
              child: Text(titulo),
            ),
            FittedBox(
              child: Text(
                information,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
