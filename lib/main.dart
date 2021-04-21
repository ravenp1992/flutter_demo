import 'package:connectivity/connectivity.dart';
import 'package:demo_app/cubit/internet_cubit.dart';
import 'package:demo_app/presentation/routes/app_router.dart';
import 'package:demo_app/presentation/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(App(
    appRouter: AppRouter(),
    connectivity: Connectivity(),
  ));
}

class App extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  App({Key? key, required this.appRouter, required this.connectivity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
      ],
      child: MaterialApp(
        title: 'Demo App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: LandingScreen(),
        onGenerateRoute: appRouter.onGeneratRoute,
      ),
    );
  }
}
