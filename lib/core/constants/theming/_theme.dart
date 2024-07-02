import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme.dark(
          surface: const Color(0xFF121212),
          onSurface: const Color(0xFFD6D6D6),
          primary: const Color(0xFFFFDB70),
          surfaceContainer: Colors.white.withOpacity(.1)));
}
