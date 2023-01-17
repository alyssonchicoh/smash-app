import 'package:smash/layers/data/dto/person_reservation_dto.dart';
import 'package:smash/layers/data/dto/reservation_dto.dart';
import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';

class ReservationDetailDto extends ReservationDetailEntity {
  ReservationDto reservationDto;

  List<PersonReservationDto> personsDto;

  ReservationDetailDto({
    required this.reservationDto,
    required this.personsDto,
    required hour,
    required courtNumber,
    required courtCapacity,
  }) : super(
          reservationEntity: reservationDto,
          hour: hour,
          courtNumber: courtNumber,
          courtCapacity: courtCapacity,
          persons: personsDto,
        );

  Map toMap() {
    return {
      'reservation': reservationDto.toMap(),
      'persons': personsDto.map((v) => v.toMap()).toList(),
      'hour': hour,
      'court_number': courtNumber,
      'court_capacity': courtCapacity,
    };
  }

  static ReservationDetailDto fromMap(Map map) {
    return ReservationDetailDto(
      reservationDto: ReservationDto.fromMap(map['reservation']),
      personsDto: List<PersonReservationDto>.from(
        (map['persons']).map<PersonReservationDto>(
          (x) => PersonReservationDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      hour: map['hour'],
      courtNumber: map['court_number'],
      courtCapacity: map['court_capacity'],
    );
  }
}
