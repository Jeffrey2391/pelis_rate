import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      fontFamily: 'HostGrotesk',
      colorScheme: ColorScheme.light(
        primary: HexColor('#000000'),
        onPrimary: HexColor('#FFFFFF'),
        primaryContainer: HexColor('#333232'),
        onPrimaryContainer: HexColor('#FFFFFF'),
        secondary: HexColor('#001D50'),
        onSecondary: HexColor('#FFFFFF'),
        secondaryContainer: HexColor('#3488FF'),
        onSecondaryContainer: HexColor('#FFFFFF'),
        tertiary: HexColor('#575757'),
        onTertiary: HexColor('#FFFFFF'),
        tertiaryContainer: HexColor('#D4D6D9'),
        onTertiaryContainer: HexColor('#FFFFFF'),
        surface: HexColor('#121212'),
        error: HexColor('#BB0000'),
        errorContainer: HexColor('#FFFFFF'),
      ));
  static final darkTheme = ThemeData(
      fontFamily: 'HostGrotesk',
      colorScheme: ColorScheme.dark(
        primary: HexColor('#000000'),
        onPrimary: HexColor('#FFFFFF'),
        primaryContainer: HexColor('#333232'),
        onPrimaryContainer: HexColor('#FFFFFF'),
        // secondary: HexColor('#001D50'),
        // onSecondary: HexColor('#FFFFFF'),
        // secondaryContainer: HexColor('#3488FF'),
        // onSecondaryContainer: HexColor('#FFFFFF'),
        // tertiary: HexColor('#575757'),
        // onTertiary: HexColor('#FFFFFF'),
        // tertiaryContainer: HexColor('#D4D6D9'),
        // onTertiaryContainer: HexColor('#FFFFFF'),
        surface: HexColor('#121212'),
        error: HexColor('#BB0000'),
        errorContainer: HexColor('#FFFFFF'),
      ));
}
