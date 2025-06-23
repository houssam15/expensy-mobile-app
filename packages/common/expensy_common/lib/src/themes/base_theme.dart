import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ExpensyCommonBaseTheme{
  static TextTheme buildGoogleFontsTextTheme(TextTheme baseTextTheme, Color primaryColor, Color secondaryColor) {
    return TextTheme(
      // Apply Montserrat to all text styles
      displayLarge: GoogleFonts.montserrat(textStyle: baseTextTheme.displayLarge, color: primaryColor),
      displayMedium: GoogleFonts.montserrat(textStyle: baseTextTheme.displayMedium, color: primaryColor),
      displaySmall: GoogleFonts.montserrat(textStyle: baseTextTheme.displaySmall, color: primaryColor),

      headlineLarge: GoogleFonts.montserrat(textStyle: baseTextTheme.headlineLarge, color: primaryColor),
      headlineMedium: GoogleFonts.montserrat(textStyle: baseTextTheme.headlineMedium, color: primaryColor),
      headlineSmall: GoogleFonts.montserrat(textStyle: baseTextTheme.headlineSmall, color: primaryColor),

      titleLarge: GoogleFonts.montserrat(textStyle: baseTextTheme.titleLarge, color: primaryColor),
      titleMedium: GoogleFonts.montserrat(textStyle: baseTextTheme.titleMedium, color: primaryColor),
      titleSmall: GoogleFonts.montserrat(textStyle: baseTextTheme.titleSmall, color: primaryColor),

      bodyLarge: GoogleFonts.montserrat(textStyle: baseTextTheme.bodyLarge, color: primaryColor),
      bodyMedium: GoogleFonts.montserrat(textStyle: baseTextTheme.bodyMedium, color: primaryColor),
      bodySmall: GoogleFonts.montserrat(textStyle: baseTextTheme.bodySmall, color: secondaryColor), // Secondary text grey

      labelLarge: GoogleFonts.montserrat(textStyle: baseTextTheme.labelLarge, color: primaryColor),
      labelMedium: GoogleFonts.montserrat(textStyle: baseTextTheme.labelMedium, color: secondaryColor), // Secondary text grey
      labelSmall: GoogleFonts.montserrat(textStyle: baseTextTheme.labelSmall, color: secondaryColor), // Secondary text grey
    );
  }
}

