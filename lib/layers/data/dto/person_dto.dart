import 'package:smash/layers/domain/entities/person_entity.dart';

class PersonDto extends PersonEntity {
  PersonDto({
    required id,
    required name,
    required urlPhoto,
  }) : super(
          id: id,
          name: name,
          urlPhoto: urlPhoto,
        );
  Map toMap() {
    return {
      'id': id,
      'name': name,
      'url_photo': urlPhoto,
    };
  }

  static PersonDto fromMap(Map map) {
    return PersonDto(
      id: map['id'],
      name: map['name'],
      urlPhoto: map['url_photo'],
    );
  }
}
