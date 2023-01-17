import 'package:smash/layers/domain/entities/available_court_entity.dart';

abstract class GetAvailableCourtByDateRepository {
  Future<List<AvailableCourtEntity>> call(DateTime data);
}
