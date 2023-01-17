import 'package:smash/layers/data/dto/reservation_datail_dto.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';

abstract class RequestNewReservationDataSource {
  Future<ReservationDetailDto> call(
      ReservationRequestEntity reservationDetailEntity);
}
