import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/utils/app_theme.dart';
import 'package:untitled1/main_page.dart';

import 'core/assets/my_cons.dart';
import 'core/routing/get_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      defaultTransition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      home: MainPage(),
      theme: AppTheme(textTheme).lightTheme,
      getPages: GetRouter.generateRoute(),
    );
  }
}
