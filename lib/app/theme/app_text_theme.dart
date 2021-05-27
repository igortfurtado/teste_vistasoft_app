import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:segundo_vista_app/app/theme/app_colors.dart';

class AppTextTheme {
  static final TextStyle title2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static final TextStyle title3 = TextStyle(
    fontSize: 20.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headline = TextStyle(
    fontSize: 18.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle body = TextStyle(
    fontSize: 16.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.normal,
  );
  static final TextStyle subhead = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textColorLight,
  );
  static final TextStyle subheadBold = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static final TextStyle button = TextStyle(
    fontSize: 15.0,
    letterSpacing: 0.5,
    color: AppColors.primaryColor,
  );
  static final TextStyle footnote = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textColorLight,
  );
  static final TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textColorLight,
  );
}
