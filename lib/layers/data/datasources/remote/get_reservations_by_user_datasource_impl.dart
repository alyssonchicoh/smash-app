import 'package:smash/layers/data/datasources/get_reservations_by_user_datasource.dart';
import 'package:smash/layers/data/dto/reservation_dto.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';

class GetReservationsByUserDataSourceImpl
    implements GetReservationByUserDataSource {
  @override
  Future<List<ReservationDto>> call(UserEntity userEntity) async {
    final reservation1 = {
      'id': 1,
      'number': 'R01150123',
      'date': '2023-01-15',
      'status': 'PAGAMENTO_PENDENTE',
      'paymentStatus': 'AGUARDANDO_RESPOSTA_OPERADORA',
    };

    final reservation2 = {
      'id': 2,
      'number': 'R02160123',
      'date': '2023-01-16',
      'status': 'RESERVA_REALIZADA',
      'paymentStatus': 'PAGO',
    };

    final reservation3 = {
      'id': 3,
      'number': 'R03170123',
      'date': '2023-01-17',
      'status': 'RESERVA_EXECULTADA',
      'paymentStatus': 'PAGO',
    };

    final reservation4 = {
      'id': 4,
      'number': 'R04180123',
      'date': '2023-01-18',
      'status': 'RESERVA_CANCELADA',
      'paymentStatus': 'CANCELADO',
    };

    final reservation5 = {
      'id': 5,
      'number': 'R05190123',
      'date': '2023-01-19',
      'status': 'RESERVA_EXECULTADA',
      'paymentStatus': 'RESERVA_EXECULTADA',
    };

    final reservation6 = {
      'id': 5,
      'number': 'R05190123',
      'date': '2023-01-10',
      'status': 'RESERVA_EXECULTADA',
      'paymentStatus': 'RESERVA_EXECULTADA',
    };

    final reservation7 = {
      'id': 5,
      'number': 'R05190123',
      'date': '2022-08-15',
      'status': 'RESERVA_EXECULTADA',
      'paymentStatus': 'RESERVA_EXECULTADA',
    };

    final reservation8 = {
      'id': 5,
      'number': 'R05190123',
      'date': '2022-02-19',
      'status': 'RESERVA_EXECULTADA',
      'paymentStatus': 'RESERVA_EXECULTADA',
    };

    await Future.delayed(const Duration(seconds: 3));
    if (userEntity.id == 1) {
      return [
        ReservationDto.fromMap(reservation1),
        ReservationDto.fromMap(reservation2),
        ReservationDto.fromMap(reservation3),
        ReservationDto.fromMap(reservation4),
        ReservationDto.fromMap(reservation5),
        ReservationDto.fromMap(reservation6),
        ReservationDto.fromMap(reservation7),
        ReservationDto.fromMap(reservation8)
      ];
    }

    return [];
  }
}
