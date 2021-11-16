import 'package:e_commerce/presentation/screens/service_screen/service_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/navi.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/exceptions/route_exception.dart';
import '../screens/home_screen/home_screen.dart';

class AppRouter {
  static const String home = '/';
  static const String service ='/service';
  static const String test ='/test';
  

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
            
          ),
        );
      case service:
        return MaterialPageRoute(
          builder: (_) => ServiceScreen(),
        );
        case test: 
        return MaterialPageRoute(
          builder: (_) => BtNav(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
