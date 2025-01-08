// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ThemeController extends GetxController {
//   var isDarkMode = false.obs;
//   var isLightMode = false.obs;
//   var isAutomaticMode = true.obs;

//   @override
//   void onInit() {
//     automaticMode();
//     _loadThemePreference();
//     super.onInit();
//   }

//   void _loadThemePreference() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
//     isLightMode.value = prefs.getBool('isLightMode') ?? false;
//     isAutomaticMode.value = prefs.getBool('isAutomaticMode') ?? true;
//   }

//   void _saveThemePreference() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isDarkMode', isDarkMode.value);
//     await prefs.setBool('isLightMode', isLightMode.value);
//     await prefs.setBool('isAutomaticMode', isAutomaticMode.value);
//   }

//   void toggleDarkMode() {
//     //Se detiene el hourlyTask
//     isAutomaticMode.value = false;
//     //Se cambia el tema a darkMode
//     isLightMode.value = false;
//     isDarkMode.value = true;
//     _saveThemePreference();
//   }

//   void toggleLightMode() {
//     //Se detiene el hourlyTask
//     isAutomaticMode.value = false;
//     //Se cambia el tema a lightMode
//     isDarkMode.value = false;
//     isLightMode.value = true;
//     _saveThemePreference();
//   }

//   void automaticMode() {
//     isAutomaticMode.value = true;
//     DateTime now = DateTime.now();

//     // Configurar el tema basado en la hora (modo oscuro: de 6 pm a 6 am)
//     if (now.hour >= 18 || now.hour < 6) {
//       isDarkMode.value = true; // Activar modo oscuro
//     } else {
//       // Activar modo claro
//       isDarkMode.value = false;
//       isLightMode.value = true;
//     }
//     if (isAutomaticMode.value) {
//       hourlyTask();
//     }
//     _saveThemePreference();
//   }

//   void hourlyTask() {
//     DateTime now = DateTime.now();

//     DateTime nextHour = DateTime(now.year, now.month, now.day, now.hour + 1);

//     Duration durationUntilNextHour = nextHour.difference(now);

//     Future.delayed(durationUntilNextHour, () {
//       if (isAutomaticMode.value) {
//         if (now.hour >= 18 || now.hour < 6) {
//           isDarkMode.value = true;
//         } else {
//           isDarkMode.value = false;
//           isLightMode.value = true;
//         }
//         hourlyTask();
//       }
//     });
//     _saveThemePreference();
//   }
// }
