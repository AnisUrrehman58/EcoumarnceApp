import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/athuntications/screens/onboarding/onboading.dart';
import 'package:t_store/utils/theme/them.dart';

/// use this class setup  theme , initial binding ,any animation and much more using material

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:  const OnBoardingScreen(),
    );
  }
}

