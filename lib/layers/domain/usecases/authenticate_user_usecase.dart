import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/repositories/authenticate_user_repository.dart';

abstract class AuthenticateUserUseCase {
  Future<UserEntity> call(UserEntity userEntity);
}

class AuthenticateUserUseCaseImpl implements AuthenticateUserUseCase {
  final AuthenticateUserRepository _authenticateUserRepository;

  AuthenticateUserUseCaseImpl(this._authenticateUserRepository);
  @override
  Future<UserEntity> call(UserEntity userEntity) async {
    return _authenticateUserRepository(userEntity);
  }
}
