import 'package:smash/layers/data/datasources/get_reservation_by_id_datasource.dart';
import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/repositories/get_reservation_by_id_repository.dart';

class GetReservationByIdRepositoryImpl implements GetReservationByIdRepository {
  final GetReservationByIdDataSource _getReservationByIdDataSource;

  GetReservationByIdRepositoryImpl(this._getReservationByIdDataSource);
  @override
  Future<ReservationDetailEntity> call(int id) async {
    return await _getReservationByIdDataSource(id);
  }
}
