import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smash/layers/presentation/ui/pages/login/login_page.dart';
import 'package:smash/layers/presentation/ui/pages/reservations/new_reservation_page.dart';
import 'package:smash/layers/presentation/ui/pages/reservations/reservation_detail_page.dart';
import 'package:smash/layers/presentation/ui/pages/reservations/reservations_page.dart';
import 'package:smash/layers/presentation/ui/pages/sign_up/sing_up_page.dart';

final routers = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => LoginPage(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (BuildContext context, GoRouterState state) =>
          const SingUpPage(),
    ),
    GoRoute(
      path: '/reservations',
      builder: (BuildContext context, GoRouterState state) =>
          ReservationsPage(),
    ),
    GoRoute(
      path: '/reservations/detail',
      builder: (BuildContext context, GoRouterState state) =>
          ReservationDetailPage(),
    ),
    GoRoute(
      path: '/reservations/new',
      builder: (BuildContext context, GoRouterState state) =>
          const NewReservationPage(),
    ),
  ],
);
