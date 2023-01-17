import 'package:smash/layers/data/datasources/get_available_court_by_date_datasource.dart';
import 'package:smash/layers/domain/entities/available_court_entity.dart';
import 'package:smash/layers/domain/repositories/get_available_court_by_date_repository.dart';

class GetAvailableCourtByDateRepositoryImpl
    implements GetAvailableCourtByDateRepository {
  final GetAvailableCourtByDateDataSource _getAvailableCourtByDateDataSource;

  GetAvailableCourtByDateRepositoryImpl(
      this._getAvailableCourtByDateDataSource);
  @override
  Future<List<AvailableCourtEntity>> call(DateTime date) async {
    return _getAvailableCourtByDateDataSource(date);
  }
}
