import 'package:flutter/material.dart';

import 'core/constants/app_string.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/route_name.dart';
import 'core/theme/app_theme.dart';

class KasirBroApp extends StatelessWidget {
  const KasirBroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: RouteName.splash,
      routes: AppRoutes.routes,
    );
  }
}
