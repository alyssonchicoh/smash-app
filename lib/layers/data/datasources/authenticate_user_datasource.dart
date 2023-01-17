import 'package:smash/layers/data/dto/user_dto.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

abstract class AuthenticateUserDatasource {
  Future<UserDTO> call(UserEntity userEntity);
}
