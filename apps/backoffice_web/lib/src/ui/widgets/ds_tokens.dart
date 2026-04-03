import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DSTokens {
  // Paleta de Cores (The Ballistic Monolith)
  static const Color primary = Color(0xFFD3C6A3); // Antic Gold
  static const Color onPrimary = Color(0xFF383017);

  static const Color background = Color(0xFF121416); // Fundo estrito
  static const Color surface = Color(0xFF1A1C1E); // Fundo dos cards/modulos
  static const Color surfaceContainerHigh = Color(0xFF282A2C); // Bordas e divisores
  
  static const Color outline = Color(0xFF8F9194);
  static const Color highlight = Color(0xFFFFFFFD); // Bright highlight
  static const Color alert = Color(0xFFFF8C00); // Tactical Orange

  // Espaçamento
  static const double spacingSm = 8.0;
  static const double spacingMd = 16.0;
  static const double spacingLg = 24.0;
  static const double spacingXl = 32.0;

  // Fontes Globais Customizadas (Usando Google Fonts cache)
  static TextStyle get headline => GoogleFonts.spaceGrotesk(
        fontWeight: FontWeight.bold,
        color: primary,
      );

  static TextStyle get body => GoogleFonts.inter(
        color: const Color(0xFFE2E2E5),
      );

  static TextStyle get label => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        color: outline,
        letterSpacing: 1.2,
      );

  static TextStyle get data => GoogleFonts.jetBrainsMono(
        color: primary,
        fontWeight: FontWeight.w700,
      );
}
