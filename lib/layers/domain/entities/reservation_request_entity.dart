import 'package:smash/layers/domain/entities/court_entity_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

class ReservationRequestEntity {
  CourtEntity courtEntity;
  String hour;
  UserEntity userEntity;

  ReservationRequestEntity({
    required this.courtEntity,
    required this.hour,
    required this.userEntity,
  });
}
