import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segundo_vista_app/app/bindings/app.binding.dart';
import 'package:segundo_vista_app/app/theme/app_theme.dart';
import 'package:segundo_vista_app/routes/app_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      getPages: AppNavigation.pages,
      initialBinding: AppBinding(),
    );
  }
}
