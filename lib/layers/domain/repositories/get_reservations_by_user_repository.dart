import 'package:smash/layers/domain/entities/reservation_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

abstract class GetReservationsByUserRepository {
  Future<List<ReservationEntity>> call(UserEntity userEntity);
}
