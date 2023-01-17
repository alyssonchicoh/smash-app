import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smash/core/inject/inject.dart';
import 'package:smash/core/routers/routers.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';

void main() {
  Inject.init();

  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp.router(
        routeInformationParser: routers.routeInformationParser,
        routerDelegate: routers.routerDelegate,
        title: "Smash APP",
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
