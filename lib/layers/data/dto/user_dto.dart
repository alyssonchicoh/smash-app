import 'package:smash/layers/domain/entities/user_entity.dart';

class UserDTO extends UserEntity {
  UserDTO(
      {required id,
      required nome,
      required token,
      required login,
      required password,
      required urlImage,
      required type})
      : super(
          id: id,
          login: login,
          nome: nome,
          password: password,
          authenticate: token != "",
          urlImage: urlImage,
          token: token,
          type: type,
        );

  Map toMap() {
    return {
      'id': id,
      'nome': nome,
      'token': token,
      'login': login,
      'password': password,
      'url_image': urlImage,
      'type': type,
    };
  }

  static UserDTO fromMap(Map map) {
    return UserDTO(
      id: _getItemMap(map, 'id'),
      nome: _getItemMap(map, 'nome'),
      token: _getItemMap(map, 'token'),
      login: _getItemMap(map, 'login'),
      password: _getItemMap(map, 'password'),
      urlImage: _getItemMap(map, 'url_image'),
      type: _getItemMap(map, 'type'),
    );
  }

  static _getItemMap(Map map, String key) {
    return map.containsKey(key) ? map[key] : '';
  }
}
