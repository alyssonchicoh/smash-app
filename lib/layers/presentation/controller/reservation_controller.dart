import 'package:provider/provider.dart';
import 'package:smash/layers/domain/entities/reservation_datail_entity.dart';
import 'package:smash/layers/domain/entities/reservation_entity.dart';
import 'package:smash/layers/domain/entities/reservation_request_entity.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/domain/usecases/get_reservation_by_id_usecase.dart';
import 'package:smash/layers/domain/usecases/get_reservations_by_user_usecase.dart';
import 'package:smash/layers/domain/usecases/remove_person_reservation_usecase.dart';
import 'package:smash/layers/domain/usecases/request_new_reservation_usecase.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';

class ReservationController {
  final GetReservationsByUserUseCase _getReservationsByUserUseCase;
  final GetReservationByIdUseCase _getReservationByIdUseCase;
  final RemovePersonReservationUseCase _removePersonReservationUseCase;
  final RequestNewReservationUseCase _requestNewReservationUseCase;

  ReservationController(
    this._getReservationsByUserUseCase,
    this._getReservationByIdUseCase,
    this._removePersonReservationUseCase,
    this._requestNewReservationUseCase,
  );

  Future<List<ReservationEntity>> getReservations(UserEntity userLogged) {
    return _getReservationsByUserUseCase(userLogged);
  }

  Future<ReservationDetailEntity> getReservationById(int id) {
    return _getReservationByIdUseCase(id);
  }

  Future<void> removePerson(int idPersonReservation) async {
    return _removePersonReservationUseCase(idPersonReservation);
  }

  Future<ReservationDetailEntity> requestNewReservation(
      ReservationRequestEntity reservationRequestEntity) async {
    return _requestNewReservationUseCase(
      reservationRequestEntity,
    );
  }
}
