import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.dark);

  static const String _themeKey = 'theme_mode';
  bool _isLoaded = false;

  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Future<void> ensureLoaded() async {
    if (_isLoaded) return;
    final prefs = await _prefs;
    final isDark = prefs.getBool(_themeKey) ?? true;
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
    _isLoaded = true;
  }

  Future<void> _saveTheme(ThemeMode mode) async {
    final prefs = await _prefs;
    await prefs.setBool(_themeKey, mode == ThemeMode.dark);
  }

  Future<void> changeTheme(ThemeMode mode) async {
    await ensureLoaded();
    await _saveTheme(mode);
    emit(mode);
  }

  Future<void> toggleTheme() async {
    await ensureLoaded();
    final newMode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await _saveTheme(newMode);
    emit(newMode);
  }
}
