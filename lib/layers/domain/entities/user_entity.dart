class UserEntity {
  late int id;
  late String nome;
  late bool authenticate;
  late String urlImage;
  late String token;
  late String type;

  String login;
  String password;

  UserEntity({
    required this.id,
    required this.nome,
    required this.login,
    required this.password,
    required this.authenticate,
    required this.urlImage,
    required this.token,
    required this.type,
  });

  UserEntity.fromLogin({
    required this.login,
    required this.password,
  });
}
