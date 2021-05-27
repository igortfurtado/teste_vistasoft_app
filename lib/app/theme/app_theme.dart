import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get appThemeData => ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: AppColors.primaryColor),
        ),
      );
}
