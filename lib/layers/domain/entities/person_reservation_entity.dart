import 'package:flutter/material.dart';
import 'package:smash/layers/domain/entities/person_entity.dart';

class PersonReservationEntity extends PersonEntity {
  String status;

  PersonReservationEntity({
    required this.status,
    required int id,
    required name,
    required urlPhoto,
  }) : super(
          id: id,
          name: name,
          urlPhoto: urlPhoto,
        );
  PersonReservationEntity.fromReservation({
    required this.status,
    required int id,
    required name,
    required urlPhoto,
  }) : super(
          id: id,
          name: name,
          urlPhoto: urlPhoto,
        );
}
