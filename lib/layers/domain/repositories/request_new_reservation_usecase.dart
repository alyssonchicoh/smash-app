import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';

abstract class RequestNewReservationRepository {
  Future<ReservationDetailEntity> call(
    ReservationRequestEntity reservationDetailEntity,
  );
}
