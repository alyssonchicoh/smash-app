import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smash/layers/presentation/controller/reservation_controller.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';
import 'package:smash/layers/presentation/ui/widgets/app/drawer_widget.dart';

class ReservationsPage extends StatelessWidget {
  ReservationsPage({Key? key}) : super(key: key);
  final _reservationController = GetIt.I.get<ReservationController>();

  @override
  Widget build(BuildContext context) {
    final userLogged = Provider.of<UserProvider>(
      context,
      listen: false,
    ).userLogged;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Reservas"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const DrawerWidget(),
      backgroundColor: Colors.grey[200],
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push('/reservations/new');
        },
        backgroundColor: Colors.green[700],
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text("Nova Reserva"),
      ),
      body: FutureBuilder(
        future: _reservationController.getReservations(userLogged),
        builder: (futureContext, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  Color statusColor = _getColorDateContainer(
                    snapshot.data[index].status.toString(),
                  );
                  List<String> formattedDate =
                      snapshot.data[index].dayAndMonth();
                  return GestureDetector(
                    onTap: () {
                      context.push('/reservations/detail');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            index == 0 ? 10 : 0,
                          ),
                          topRight: Radius.circular(
                            index == 0 ? 10 : 0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(
                              20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: statusColor,
                                        ),
                                        color: statusColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                      height: 70,
                                      width: 70,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              formattedDate[0].toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              formattedDate[1]
                                                  .toString()
                                                  .toUpperCase(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 70,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data[index].number
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              _getTextStatus(
                                                  snapshot.data[index].status),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: statusColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              color: Colors.grey[200],
                              height: snapshot.data.length - 1 == index ? 0 : 2,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: snapshot.data.length,
              ),
            );
          }
        },
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
}
