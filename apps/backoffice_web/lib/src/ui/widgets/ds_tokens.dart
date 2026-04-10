import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DSTokens {
  // Paleta de Cores (The Ballistic Monolith)
  static const Color primary = Color.fromARGB(255, 66, 35, 167); // Antic Gold
  static const Color onPrimary = Color(0xFF383017);

  static const Color background = Color(0xFF121416); // Fundo estrito
  static const Color onBackground = Color.fromARGB(
    255,
    250,
    250,
    251,
  ); // Fundo estrito
  static const Color surface = Color(0xFF1A1C1E); // Fundo dos cards/modulos
  static const Color surfaceContainer = Color(0xFF212325);
  static const Color surfaceContainerHigh = Color(
    0xFF282A2C,
  ); // Bordas e divisores

  static const Color onSurface = Color(0xFFE2E2E5);
  static const Color onSurfaceVariant = Color(0xFFC2C2CD);

  static const Color outline = Color(0xFF8F9194);
  static const Color outlineVariant = Color(0xFF44474A);

  static const Color highlight = Color(0xFFFFFFFD); // Bright highlight
  static const Color success = Color(0xFF00FF41); // Neon Green
  static const Color info = Color(0xFF00E5FF); // Electric Cyan
  static const Color warning = Color(0xFFFFFF00); // Neon Yellow
  static const Color alert = warning;
  static const Color error = Color(0xFFFF0000); // Pure Red

  // Espaçamento
  static const double spacingXs = 4.0;
  static const double spacingSm = 8.0;
  static const double spacingMd = 16.0;
  static const double spacingLg = 24.0;
  static const double spacingXl = 32.0;

  // Fontes Globais Customizadas
  static TextStyle get headline =>
      GoogleFonts.spaceGrotesk(fontWeight: FontWeight.bold, color: primary);

  static TextStyle get h1 => GoogleFonts.spaceGrotesk(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: primary,
  );

  static TextStyle get h2 => GoogleFonts.spaceGrotesk(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: primary,
  );

  static TextStyle get body =>
      GoogleFonts.inter(fontSize: 14, color: onSurface);

  static TextStyle get label => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: outline,
    letterSpacing: 1.2,
  );

  static TextStyle get data =>
      GoogleFonts.jetBrainsMono(color: primary, fontWeight: FontWeight.w700);
}
