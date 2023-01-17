import 'package:smash/layers/data/datasources/remove_person_reservation_datasource.dart';
import 'package:smash/layers/domain/repositories/remove_person_reservation_repository.dart';

class RemovePersonReservationRepositoryImpl
    implements RemovePersonReservationRepository {
  final RemovePersonReservationDataSouce _removePersonReservationDataSouce;

  RemovePersonReservationRepositoryImpl(this._removePersonReservationDataSouce);
  @override
  Future<void> call(int idPersonReservation) async {
    return _removePersonReservationDataSouce.call(idPersonReservation);
  }
}
