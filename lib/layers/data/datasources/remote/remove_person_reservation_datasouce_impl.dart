import 'package:smash/layers/data/datasources/remove_person_reservation_datasource.dart';

class RemovePersonReservationDataSouceImpl
    implements RemovePersonReservationDataSouce {
  @override
  Future<void> call(int idPersonReservation) async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }
}
