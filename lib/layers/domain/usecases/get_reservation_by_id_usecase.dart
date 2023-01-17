import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/repositories/get_reservation_by_id_repository.dart';

abstract class GetReservationByIdUseCase {
  Future<ReservationDetailEntity> call(int id);
}

class GetReservationByIdUseCaseImpl implements GetReservationByIdUseCase {
  final GetReservationByIdRepository _getReservationByIdRepository;

  GetReservationByIdUseCaseImpl(this._getReservationByIdRepository);

  @override
  Future<ReservationDetailEntity> call(int id) {
    return _getReservationByIdRepository(id);
  }
}
