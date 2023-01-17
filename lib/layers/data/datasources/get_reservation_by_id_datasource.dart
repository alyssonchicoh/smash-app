import 'package:smash/layers/data/dto/reservation_datail_dto.dart';

abstract class GetReservationByIdDataSource {
  Future<ReservationDetailDto> call(int id);
}
