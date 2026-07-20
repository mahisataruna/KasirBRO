import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.background,
    colorSchemeSeed: AppColor.primary,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
