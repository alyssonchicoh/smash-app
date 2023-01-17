import 'package:smash/layers/domain/repositories/remove_person_reservation_repository.dart';

abstract class RemovePersonReservationUseCase {
  Future<void> call(int idPersonReservation);
}

class RemovePersonReservationUseCaseImpl
    implements RemovePersonReservationUseCase {
  final RemovePersonReservationRepository _removePersonReservationRepository;

  RemovePersonReservationUseCaseImpl(this._removePersonReservationRepository);

  @override
  Future<void> call(int idPersonReservation) async {
    return _removePersonReservationRepository(idPersonReservation);
  }
}
