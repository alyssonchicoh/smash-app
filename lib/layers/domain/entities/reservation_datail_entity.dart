import 'package:smash/layers/domain/entities/person_reservation_entity.dart';
import 'package:smash/layers/domain/entities/reservation_entity.dart';

class ReservationDetailEntity {
  ReservationEntity reservationEntity;
  String hour;
  String courtNumber;
  int courtCapacity;
  List<PersonReservationEntity> persons;

  ReservationDetailEntity({
    required this.reservationEntity,
    required this.persons,
    required this.hour,
    required this.courtNumber,
    required this.courtCapacity,
  });
}
