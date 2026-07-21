import 'package:flutter/material.dart';

import '../../../core/routes/route_name.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_card.dart';
import '../../../shared/widgets/app_text_field.dart';
import 'remember_me.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          AppTextField(
            controller: usernameController,
            hintText: "Username",
            prefixIcon: Icons.person_outline,
          ),

          const SizedBox(height: 16),

          AppTextField(
            controller: passwordController,
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
            obscureText: obscurePassword,

            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscurePassword = !obscurePassword;
                });
              },

              icon: Icon(
                obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),

          const SizedBox(height: 10),

          const RememberMe(),

          const SizedBox(height: 24),

          AppButton(
            text: "LOGIN",
            icon: Icons.login,
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteName.dashboard);
            },
          ),
        ],
      ),
    );
  }
}
