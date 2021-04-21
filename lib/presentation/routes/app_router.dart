import 'package:demo_app/presentation/screens/api_screen.dart';
import 'package:demo_app/presentation/screens/connectivity_screen.dart';
import 'package:demo_app/presentation/screens/landing_screen.dart';
import 'package:demo_app/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGeneratRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingScreen());
      case '/api_demo':
        return MaterialPageRoute(builder: (_) => ApiScreen());
      case '/connectivity':
        return MaterialPageRoute(builder: (_) => ConnectivityScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        throw UnimplementedError('route not found');
    }
  }
}
