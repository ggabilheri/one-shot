import 'package:flutter/material.dart';

class DSTokens {
  // Cores Baseadas no Stitch "OneShot - Backoffice - 1" (The Ballistic Monolith)
  static const Color primary = Color(0xFFD3C6A3); // Antic Gold
  static const Color primaryContainer = Color(0xFF362E16);
  static const Color onPrimary = Color(0xFF383017);

  static const Color secondary = Color(0xFFC5C9B3);
  static const Color secondaryContainer = Color(0xFF454938);
  static const Color onSecondary = Color(0xFF2E3223);

  static const Color background = Color(0xFF121416);
  static const Color surface = Color(0xFF1A1C1E);
  static const Color surfaceContainerHigh = Color(0xFF282A2C);
  static const Color outline = Color(0xFF8F9194);
  static const Color error = Color(0xFFFFB4AB);
  static const Color tertiary = Color(0xFFFF8C00); // Tactical Orange

  // Espaçamento
  static const double spacingSm = 8.0;
  static const double spacingMd = 16.0;
  static const double spacingLg = 24.0;
  static const double spacingXl = 32.0;

  // Border Radius
  static const double borderRadius = 8.0;

  // Texto
  static const TextStyle headline = TextStyle(
    fontFamily: 'SpaceGrotesk',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: primary,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    color: Color(0xFFE2E2E5), // onSurface
  );

  static const TextStyle label = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: outline,
  );

  static const TextStyle data = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    color: primary,
  );
}
