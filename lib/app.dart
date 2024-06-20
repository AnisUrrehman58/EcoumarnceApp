import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/theme/them.dart';

import 'bindings/general_bindings.dart';

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
      initialBinding: GeneralBindings(),
      /// Show leader or circular Progress indicator meanwhile Authentication Repository Deciding to show relevant Screen
      home:  const Scaffold(backgroundColor: TColors.primary,body: Center(
          child: CircularProgressIndicator(
          color: Colors.white
      )
      )
      ),
    );
  }
}

