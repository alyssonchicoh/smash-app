import 'package:flutter/cupertino.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

class UserProvider extends ChangeNotifier {
  UserEntity? _userLogged;

  login(UserEntity userEntity) {
    _userLogged = userEntity;
    notifyListeners();
  }

  logout() {
    _userLogged = null;
    notifyListeners();
  }

  UserEntity get userLogged => _userLogged!;
}
