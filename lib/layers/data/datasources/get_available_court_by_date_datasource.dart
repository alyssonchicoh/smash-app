import 'package:smash/layers/data/dto/available_court_dto.dart';

abstract class GetAvailableCourtByDateDataSource {
  Future<List<AvailableCourtDto>> call(DateTime data);
}
