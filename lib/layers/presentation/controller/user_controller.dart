import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/usecases/authenticate_user_usecase.dart';

class UserController {
  final AuthenticateUserUseCase _authenticateUserUseCase;

  UserController(this._authenticateUserUseCase);

  Future<UserEntity> login(String login, String password) async {
    return _authenticateUserUseCase(
      UserEntity.fromLogin(
        login: login,
        password: password,
      ),
    );
  }
}
