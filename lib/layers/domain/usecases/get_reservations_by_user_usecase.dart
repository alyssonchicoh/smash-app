import 'package:smash/layers/domain/entities/reservation_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/repositories/get_reservations_by_user_repository.dart';

abstract class GetReservationsByUserUseCase {
  Future<List<ReservationEntity>> call(UserEntity userEntity);
}

class GetReservationsByUserUseCaseImpl implements GetReservationsByUserUseCase {
  final GetReservationsByUserRepository _getReservationsByUserRepository;

  GetReservationsByUserUseCaseImpl(this._getReservationsByUserRepository);

  @override
  Future<List<ReservationEntity>> call(UserEntity userEntity) {
    return _getReservationsByUserRepository(userEntity);
  }
}
