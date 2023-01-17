import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/domain/repositories/request_new_reservation_usecase.dart';

abstract class RequestNewReservationUseCase {
  Future<ReservationDetailEntity> call(
      ReservationRequestEntity reservationDetailEntity);
}

class RequestNewReservationUseCaseImpl implements RequestNewReservationUseCase {
  final RequestNewReservationRepository _requestNewReservationRepository;

  RequestNewReservationUseCaseImpl(
    this._requestNewReservationRepository,
  );

  @override
  Future<ReservationDetailEntity> call(
      ReservationRequestEntity reservationDetailEntity) {
    return _requestNewReservationRepository(reservationDetailEntity);
  }
}
