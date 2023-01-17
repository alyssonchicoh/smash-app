import 'package:smash/layers/data/datasources/request_new_reservation_datasource.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/repositories/request_new_reservation_usecase.dart';

class RequestNewReservationRepositoryImpl
    implements RequestNewReservationRepository {
  final RequestNewReservationDataSource _requestNewReservationDataSource;

  RequestNewReservationRepositoryImpl(this._requestNewReservationDataSource);

  @override
  Future<ReservationDetailEntity> call(
      ReservationRequestEntity reservationDetailEntity) async {
    return _requestNewReservationDataSource(reservationDetailEntity);
  }
}
