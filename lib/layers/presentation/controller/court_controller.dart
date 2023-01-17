import 'package:smash/layers/domain/entities/available_court_entity.dart';
import 'package:smash/layers/domain/usecases/get_available_court_by_date_usecase.dart';

class CourtController {
  final GetAvailableCourtByDateUseCase _availableCourtByDateUseCase;

  CourtController(this._availableCourtByDateUseCase);

  Future<List<AvailableCourtEntity>> getAvailableCourt(
      DateTime dateTime) async {
    return _availableCourtByDateUseCase(dateTime);
  }
}
