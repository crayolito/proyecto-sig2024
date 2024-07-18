import 'package:app_sig_2014/blocs/auth/authetication_bloc.dart';
import 'package:app_sig_2014/blocs/googleMap/google_map_bloc.dart';
import 'package:app_sig_2014/blocs/location/location_bloc.dart';
import 'package:app_sig_2014/blocs/permissions/permissions_bloc.dart';
import 'package:app_sig_2014/config/constant/estilosLetras.constant.dart';
import 'package:app_sig_2014/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() async {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => PermissionsBloc()),
      BlocProvider(create: (context) => AutheticationBloc()),
      BlocProvider(create: (context) => LocationBloc()),
      BlocProvider(create: (context) => GoogleMapBloc()),
      BlocProvider(create: (context) => LocationBloc()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    EstilosLetras(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
