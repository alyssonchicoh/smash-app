import 'package:smash/layers/data/dto/court_dto.dart';
import 'package:smash/layers/domain/entities/available_court_entity.dart';

class AvailableCourtDto extends AvailableCourtEntity {
  CourtDto courtDto;

  AvailableCourtDto({
    required this.courtDto,
    required List<String> hours,
  }) : super(
          court: courtDto,
          hours: hours,
        );

  Map toMap() {
    return {
      'court': courtDto.toMap(),
      'hours': hours,
    };
  }

  static AvailableCourtDto fromMap(Map map) {
    return AvailableCourtDto(
      courtDto: CourtDto.fromMap(map['court']),
      hours: map['hours'],
    );
  }
}
