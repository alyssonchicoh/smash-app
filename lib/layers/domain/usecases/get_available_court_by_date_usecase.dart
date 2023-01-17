import 'package:smash/layers/domain/entities/available_court_entity.dart';
import 'package:smash/layers/domain/repositories/get_available_court_by_date_repository.dart';

abstract class GetAvailableCourtByDateUseCase {
  Future<List<AvailableCourtEntity>> call(DateTime data);
}

class GetAvailableCourtByDateUseCaseImpl
    implements GetAvailableCourtByDateUseCase {
  final GetAvailableCourtByDateRepository _availableCourtByDateRepository;

  GetAvailableCourtByDateUseCaseImpl(this._availableCourtByDateRepository);
  @override
  Future<List<AvailableCourtEntity>> call(DateTime data) {
    return _availableCourtByDateRepository(data);
  }
}
