import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motobites/core/constants/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle raleway({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.text,
    double? height,
    double? letterSpacing,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) => GoogleFonts.raleway(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
    decoration: decoration,
    fontStyle: fontStyle,
  );

  static TextStyle inter({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.text,
    double? height,
    double? letterSpacing,
    TextDecoration? decoration,
  }) => GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
    decoration: decoration,
  );

  // Primary button label
  static TextStyle get buttonLabel => GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 24 / 16,
    letterSpacing: 0.1,
  );

  static TextStyle get pinDigit => GoogleFonts.manrope(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle get hint => GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.hint,
  );

  // ── Splash ──────────────────────────────────────────────────────────────

  // "Motobites" — Raleway Black Italic 24px / lh 30px
  static TextStyle get splashBrand => GoogleFonts.raleway(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    height: 30 / 24,
    letterSpacing: 0,
  );

  // "FAST / AFFORDABLE / DELICIOUS" — Raleway SemiBold Italic 40px / lh 100%
  static TextStyle get splashTagline => GoogleFonts.raleway(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    height: 1,
    letterSpacing: 0,
  );

  // ── Onboarding ──────────────────────────────────────────────────────────

  static TextStyle get onboardingTitle => GoogleFonts.raleway(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 34 / 26,
    letterSpacing: 0,
  );

  static TextStyle get onboardingSubtitle => GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white.withValues(alpha: 0.8),
    height: 20 / 14,
    letterSpacing: 0,
  );

  static TextStyle get secondaryButtonLabel => GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 24 / 16,
    letterSpacing: 0.1,
  );
}
