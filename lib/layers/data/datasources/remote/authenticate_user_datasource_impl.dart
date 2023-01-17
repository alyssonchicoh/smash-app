import 'package:smash/layers/data/datasources/authenticate_user_datasource.dart';
import 'package:smash/layers/data/dto/user_dto.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

class AuthenticateUserDatasourceImpl implements AuthenticateUserDatasource {
  @override
  Future<UserDTO> call(UserEntity userEntity) async {
    await Future.delayed(const Duration(seconds: 3));

    var userMarcos = {
      "id": 1,
      "nome": "Marcos José",
      "password": "123",
      "login": "marcos",
      "token": "654s65df6sd54fsd",
      "url_image":
          "https://www.psicologo.com.br/wp-content/uploads/sou-uma-pessoa-boa-ou-nao-1024x538.jpg",
      'type': 'Usuário Aluno'
    };

    var userMaria = {
      "id": 1,
      "nome": "Maria Silva",
      "password": "123",
      "login": "maria",
      "token": "654s65df6sd54fsd",
      "url_image":
          "https://wl-incrivel.cf.tsp.li/resize/728x/jpg/0ec/140/d189845022bb6eddb88bb5279a.jpg",
      'type': 'Usuário Visitante'
    };

    var userFail = {
      "password": "123",
      "login": "alysson",
    };

    if (userEntity.login == "marcos" && userEntity.password == "123") {
      return UserDTO.fromMap(userMarcos);
    }

    if (userEntity.login == "maria" && userEntity.password == "123") {
      return UserDTO.fromMap(userMaria);
    }

    return UserDTO.fromMap(userFail);
  }
}
