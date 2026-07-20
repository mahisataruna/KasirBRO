import 'package:flutter/material.dart';

import '../../../core/constants/app_color.dart';
import '../../../core/constants/app_string.dart';
import '../../../core/constants/app_asset.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Logo
        Image.asset(AppAsset.logoSplash, width: 100, height: 100),

        const SizedBox(height: 24),

        // Nama Aplikasi
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
        ),

        const SizedBox(height: 8),

        // Tagline
        Text(
          AppString.slogan,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600),
        ),

        const SizedBox(height: 32),
      ],
    );
  }
}
