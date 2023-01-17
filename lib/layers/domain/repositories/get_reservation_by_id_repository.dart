import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';

abstract class GetReservationByIdRepository {
  Future<ReservationDetailEntity> call(int id);
}
