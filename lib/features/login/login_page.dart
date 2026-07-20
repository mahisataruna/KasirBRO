import 'package:flutter/material.dart';

import '../../core/constants/app_size.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSize.padding),
            child: Column(
              children: [
                const LoginHeader(),

                const SizedBox(height: 40),

                LoginForm(),

                const SizedBox(height: 30),

                Text(
                  "Versi 1.0.0",
                  style: Theme.of(context).textTheme.bodySmall,
                ),

                const SizedBox(height: 6),

                Text(
                  "Developed by Kreapic",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
