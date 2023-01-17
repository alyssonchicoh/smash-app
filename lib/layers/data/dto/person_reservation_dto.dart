import 'package:smash/layers/domain/entities/person_reservation_entity.dart';

class PersonReservationDto extends PersonReservationEntity {
  PersonReservationDto({
    required status,
    required int id,
    required name,
    required urlPhoto,
  }) : super(
          id: id,
          name: name,
          urlPhoto: urlPhoto,
          status: status,
        );

  Map toMap() {
    return {
      'id': id,
      'name': name,
      'url_photo': urlPhoto,
      'status': status,
    };
  }

  static PersonReservationDto fromMap(Map map) {
    return PersonReservationDto(
      id: map['id'],
      name: map['name'],
      urlPhoto: map['url_photo'],
      status: map['status'],
    );
  }
}
