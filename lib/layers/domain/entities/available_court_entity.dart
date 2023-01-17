import 'package:smash/layers/domain/entities/court_entity_entity.dart';

class AvailableCourtEntity {
  CourtEntity court;
  List<String> hours;

  AvailableCourtEntity({
    required this.court,
    required this.hours,
  });
}
