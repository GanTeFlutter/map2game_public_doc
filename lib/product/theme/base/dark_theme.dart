part of '../theme.dart';

final _darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: _darkColorScheme,
  // textTheme: _textTheme,
  scaffoldBackgroundColor: const Color(0xFF212121),
  appBarTheme: _appBarTheme,
  cardTheme: _darkCardTheme,
  inputDecorationTheme: _darkInputDecorationTheme,
  elevatedButtonTheme: _elevatedButtonDarkTheme,
);
