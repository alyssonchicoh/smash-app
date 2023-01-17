import 'package:smash/layers/data/datasources/request_new_reservation_datasource.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/data/dto/reservation_datail_dto.dart';

class RequestNewReservationDataSourceImpl
    implements RequestNewReservationDataSource {
  @override
  Future<ReservationDetailDto> call(
      ReservationRequestEntity reservationDetailEntity) async {
    await Future.delayed(const Duration(seconds: 2));

    final reservation = {
      'id': 1,
      'number': "0110123",
      'date': "2023-01-16",
      'status': "Pagamento Pendente",
      'paymentStatus': "PENDENTE",
    };

    final reservationDetail = {
      'reservation': reservation,
      'hour': '20:00',
      'court_number': '7',
      'court_capacity': 10,
      'persons': []
    };

    return ReservationDetailDto.fromMap(reservationDetail);
  }
}
