import 'package:flutter/material.dart';

import '../../features/barista/barista_page.dart';
import '../../features/cashier/cashier_page.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/history/history_page.dart';
import '../../features/login/login_page.dart';
import '../../features/products/products_page.dart';
import '../../features/profile/profile_page.dart';
import '../../features/splash/splash_page.dart';
import 'route_name.dart';

class AppRoutes {
  AppRoutes._();

  static Map<String, WidgetBuilder> routes = {
    RouteName.splash: (_) => const SplashPage(),
    RouteName.login: (_) => const LoginPage(),
    RouteName.dashboard: (_) => const DashboardPage(),
    RouteName.cashier: (_) => const CashierPage(),
    RouteName.products: (_) => const ProductsPage(),
    RouteName.history: (_) => const HistoryPage(),
    RouteName.profile: (_) => const ProfilePage(),
    RouteName.barista: (_) => const BaristaPage(),
  };
}
