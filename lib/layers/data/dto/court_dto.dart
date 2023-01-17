import 'package:smash/layers/domain/entities/court_entity_entity.dart';

class CourtDto extends CourtEntity {
  CourtDto({
    required int id,
    required int number,
    required String type,
    required int capacity,
  }) : super(
          id: id,
          number: number,
          type: type,
          capacity: capacity,
        );

  Map toMap() {
    return {
      'id': id,
      'number': number,
      'type': type,
      'capacity': capacity,
    };
  }

  static CourtDto fromMap(Map map) {
    return CourtDto(
      id: map['id'],
      number: map['number'],
      type: map['type'],
      capacity: map['capacity'],
    );
  }
}
