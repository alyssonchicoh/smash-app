import 'package:get_it/get_it.dart';
import 'package:smash/layers/data/datasources/authenticate_user_datasource.dart';
import 'package:smash/layers/data/datasources/get_available_court_by_date_datasource.dart';
import 'package:smash/layers/data/datasources/get_reservation_by_id_datasource.dart';
import 'package:smash/layers/data/datasources/get_reservations_by_user_datasource.dart';
import 'package:smash/layers/data/datasources/remote/authenticate_user_datasource_impl.dart';
import 'package:smash/layers/data/datasources/remote/get_available_court_by_date_datasource_impl.dart';
import 'package:smash/layers/data/datasources/remote/get_reservation_by_id_datasource_impl.dart';
import 'package:smash/layers/data/datasources/remote/get_reservations_by_user_datasource_impl.dart';
import 'package:smash/layers/data/datasources/remote/remove_person_reservation_datasouce_impl.dart';
import 'package:smash/layers/data/datasources/remote/request_new_reservation_datasource_impl.dart';
import 'package:smash/layers/data/datasources/remove_person_reservation_datasource.dart';
import 'package:smash/layers/data/datasources/request_new_reservation_datasource.dart';
import 'package:smash/layers/data/repositories/authenticate_user_repository_impl.dart';
import 'package:smash/layers/data/repositories/get_available_court_by_date_repository_impl.dart';
import 'package:smash/layers/data/repositories/get_reservation_by_id_repository_impl.dart';
import 'package:smash/layers/data/repositories/get_reservations_by_user_repository_impl.dart';
import 'package:smash/layers/data/repositories/remove_person_reservation_repository_impl.dart';
import 'package:smash/layers/data/repositories/request_new_reservation_repository.dart';
import 'package:smash/layers/domain/repositories/authenticate_user_repository.dart';
import 'package:smash/layers/domain/repositories/get_available_court_by_date_repository.dart';
import 'package:smash/layers/domain/repositories/get_reservation_by_id_repository.dart';
import 'package:smash/layers/domain/repositories/get_reservations_by_user_repository.dart';
import 'package:smash/layers/domain/repositories/remove_person_reservation_repository.dart';
import 'package:smash/layers/domain/repositories/request_new_reservation_usecase.dart';
import 'package:smash/layers/domain/usecases/authenticate_user_usecase.dart';
import 'package:smash/layers/domain/usecases/get_available_court_by_date_usecase.dart';
import 'package:smash/layers/domain/usecases/get_reservation_by_id_usecase.dart';
import 'package:smash/layers/domain/usecases/get_reservations_by_user_usecase.dart';
import 'package:smash/layers/domain/usecases/remove_person_reservation_usecase.dart';
import 'package:smash/layers/domain/usecases/request_new_reservation_usecase.dart';
import 'package:smash/layers/presentation/controller/court_controller.dart';
import 'package:smash/layers/presentation/controller/reservation_controller.dart';
import 'package:smash/layers/presentation/controller/user_controller.dart';

class Inject {
  static void init() {
    _initDatasources();
    _initRepositores();
    _initUseCases();
    _initControllers();
  }

  static void _initDatasources() {
    GetIt getIt = GetIt.instance;

    // DATASOURCES
    getIt.registerLazySingleton<AuthenticateUserDatasource>(
      () => AuthenticateUserDatasourceImpl(),
    );

    getIt.registerLazySingleton<GetReservationByUserDataSource>(
      () => GetReservationsByUserDataSourceImpl(),
    );
    getIt.registerLazySingleton<GetReservationByIdDataSource>(
      () => GetReservationByIdDataSourceImpl(),
    );

    getIt.registerLazySingleton<RemovePersonReservationDataSouce>(
      () => RemovePersonReservationDataSouceImpl(),
    );

    getIt.registerLazySingleton<GetAvailableCourtByDateDataSource>(
      () => GetAvailableCourtByDateDataSourceImpl(),
    );

    getIt.registerLazySingleton<RequestNewReservationDataSource>(
      () => RequestNewReservationDataSourceImpl(),
    );
  }

  static void _initRepositores() {
    GetIt getIt = GetIt.instance;

    // REPOSITORIES
    getIt.registerLazySingleton<AuthenticateUserRepository>(
      () => AuthenticateUserRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<GetReservationsByUserRepository>(
      () => GetReservationsByUserRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<GetReservationByIdRepository>(
      () => GetReservationByIdRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<RemovePersonReservationRepository>(
      () => RemovePersonReservationRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<GetAvailableCourtByDateRepository>(
      () => GetAvailableCourtByDateRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<RequestNewReservationRepository>(
      () => RequestNewReservationRepositoryImpl(getIt()),
    );
  }

  static void _initUseCases() {
    GetIt getIt = GetIt.instance;

    // USERCASES
    getIt.registerLazySingleton<AuthenticateUserUseCase>(
      () => AuthenticateUserUseCaseImpl(getIt()),
    );

    getIt.registerLazySingleton<GetReservationsByUserUseCase>(
      () => GetReservationsByUserUseCaseImpl(getIt()),
    );

    getIt.registerLazySingleton<GetReservationByIdUseCase>(
      () => GetReservationByIdUseCaseImpl(getIt()),
    );

    getIt.registerLazySingleton<RemovePersonReservationUseCase>(
      () => RemovePersonReservationUseCaseImpl(getIt()),
    );

    getIt.registerLazySingleton<GetAvailableCourtByDateUseCase>(
      () => GetAvailableCourtByDateUseCaseImpl(getIt()),
    );

    getIt.registerLazySingleton<RequestNewReservationUseCase>(
      () => RequestNewReservationUseCaseImpl(getIt()),
    );
  }

  static void _initControllers() {
    GetIt getIt = GetIt.instance;

    //CONTROLLERS
    getIt.registerFactory<UserController>(
      () => UserController(getIt()),
    );

    getIt.registerFactory<ReservationController>(
      () => ReservationController(
        getIt(),
        getIt(),
        getIt(),
        getIt(),
      ),
    );

    getIt.registerFactory<CourtController>(
      () => CourtController(getIt()),
    );
  }
}
