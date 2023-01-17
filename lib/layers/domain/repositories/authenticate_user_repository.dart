import 'package:smash/layers/domain/entities/user_entity.dart';

abstract class AuthenticateUserRepository {
  Future<UserEntity> call(UserEntity userEntity);
}
