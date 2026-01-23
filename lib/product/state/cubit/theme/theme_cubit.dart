// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ThemeCubit extends Cubit<ThemeMode> {
//   ThemeCubit() : super(ThemeMode.dark) {
//     _loadTheme();
//   }

//   static const String _themeKey = 'theme_mode';

//   bool get isDarkMode => state == ThemeMode.dark;
//   bool get isLightMode => state == ThemeMode.light;

//   Future<void> _loadTheme() async {
//     final prefs = await SharedPreferences.getInstance();
//     final isDark = prefs.getBool(_themeKey) ?? true; // Varsayılan: dark
//     emit(isDark ? ThemeMode.dark : ThemeMode.light);
//   }

//   Future<void> _saveTheme(ThemeMode mode) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool(_themeKey, mode == ThemeMode.dark);
//     emit(mode);
//   }

//   Future<void> toggleTheme() async {
//     final newMode = isDarkMode ? ThemeMode.light : ThemeMode.dark;
//     await _saveTheme(newMode);
//   }

//   Future<void> setLightTheme() => _saveTheme(ThemeMode.light);
//   Future<void> setDarkTheme() => _saveTheme(ThemeMode.dark);
// }
