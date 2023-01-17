import 'package:smash/layers/data/datasources/get_reservations_by_user_datasource.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/entities/reservation_entity.dart';
import 'package:smash/layers/domain/repositories/get_reservations_by_user_repository.dart';

class GetReservationsByUserRepositoryImpl
    implements GetReservationsByUserRepository {
  final GetReservationByUserDataSource _getReservationByUserDataSource;

  GetReservationsByUserRepositoryImpl(this._getReservationByUserDataSource);
  @override
  Future<List<ReservationEntity>> call(UserEntity userEntity) {
    return _getReservationByUserDataSource(userEntity);
  }
}
