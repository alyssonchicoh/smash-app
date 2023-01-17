import 'package:smash/layers/data/datasources/authenticate_user_datasource.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/repositories/authenticate_user_repository.dart';

class AuthenticateUserRepositoryImpl implements AuthenticateUserRepository {
  final AuthenticateUserDatasource _authenticateUserDatasource;

  AuthenticateUserRepositoryImpl(this._authenticateUserDatasource);
  @override
  Future<UserEntity> call(UserEntity userEntity) async {
    return _authenticateUserDatasource(userEntity);
  }
}
