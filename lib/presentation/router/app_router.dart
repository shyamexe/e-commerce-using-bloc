import 'package:e_commerce/presentation/screens/home_screen/home_page.dart';
import 'package:e_commerce/presentation/screens/sales_screen/sales_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/service_screen.dart';
import 'package:e_commerce/presentation/screens/commen/bottum_navigation_bar/bottum_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/exceptions/route_exception.dart';
class AppRouter {
  static const String home = '/';
  static const String service = '/service';
  static const String sales = '/sales';
  static const String test ='/test';
  
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => BottumNavigationBar(),
        );
      case service:
        return MaterialPageRoute(
          builder: (_) => ServiceScreen(),
        );

      case sales:
        return MaterialPageRoute(
          builder: (_) => SalesScreen(),
        );
        case test: 
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
