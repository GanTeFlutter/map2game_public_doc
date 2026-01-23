part of '../theme.dart';

// Light Theme Input Decoration
final _lightInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: const Color(0xFFF5F7FA), // Açık gri arka plan
  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.grey.shade300),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.grey.shade300),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFF2853AF), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.red, width: 2),
  ),
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  floatingLabelStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    color: Color(0xFF2853AF),
  ),
  hintStyle: TextStyle(
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w400,
  ),
  labelStyle: TextStyle(
    color: Colors.grey.shade700,
    fontWeight: FontWeight.w500,
  ),
);

// Dark Theme Input Decoration
final _darkInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: const Color(0xFF1E1E1E), // Koyu gri arka plan
  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFF383838)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFF383838)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFF5B8DEE), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFFCF6679)),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFFCF6679), width: 2),
  ),
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  floatingLabelStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    color: Color(0xFF5B8DEE),
  ),
  hintStyle: const TextStyle(
    color: Color(0xFF9E9E9E),
    fontWeight: FontWeight.w400,
  ),
  labelStyle: const TextStyle(
    color: Color(0xFFBDBDBD),
    fontWeight: FontWeight.w500,
  ),
);
