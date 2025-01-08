import 'package:flutter/material.dart';
import 'package:pelis_rate/features/home/views/home_page.dart';

import 'theme/app_theme.dart';

void main() {
  runApp(PelisRate());
}

class PelisRate extends StatelessWidget {
  const PelisRate({super.key});
  //final ThemeController _themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      //themeMode: ThemeMode.dark,
      // _themeController.isDarkMode.value == true
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      home: HomePage(),
    );
  }
}
