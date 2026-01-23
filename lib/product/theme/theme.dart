import 'package:flutter/material.dart';

part 'base/color_schemes.dart';
part 'parts/card_theme.dart';
part 'parts/button_theme.dart';
part 'parts/input_theme.dart';
part 'parts/appbar_theme.dart';
part 'base/dark_theme.dart';
part 'base/light_theme.dart';

final class AppTheme {
  AppTheme._();
  static ThemeData get darkTheme => _darkTheme;
  static ThemeData get lightTheme => _lightTheme;
}
