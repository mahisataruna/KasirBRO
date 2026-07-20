import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/constants/app_color.dart';
import '../../core/constants/app_string.dart';
import '../../core/routes/route_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    _navigateToLogin();
  }

  void _navigateToLogin() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteName.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [
                const Spacer(),

                Image.asset('lib/assets/logo/logo.png', width: 150),

                const SizedBox(height: 24),

                Text(
                  AppString.appName,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(AppString.slogan, style: const TextStyle(fontSize: 16)),

                const SizedBox(height: 40),

                const CircularProgressIndicator(),

                const Spacer(),

                Text(
                  AppString.version,
                  style: const TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
