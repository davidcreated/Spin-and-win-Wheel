import 'package:flutter/widgets.dart';
import 'package:motobites/core/constants/app_strings.dart';

abstract final class AppValidators {
  static FormFieldValidator<String> get email => (value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.auth.errors.emailRequired;
    }
    final regex = RegExp(
      r'^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$',
    );
    if (!regex.hasMatch(value.trim())) {
      return AppStrings.auth.errors.emailInvalid;
    }
    return null;
  };

  static FormFieldValidator<String> get password => (value) {
    if (value == null || value.isEmpty) {
      return AppStrings.auth.errors.passwordRequired;
    }
    if (value.length < 8) return AppStrings.auth.errors.passwordLength;
    if (!RegExp('[A-Z]').hasMatch(value)) {
      return AppStrings.auth.errors.passwordUppercase;
    }
    if (!RegExp('[a-z]').hasMatch(value)) {
      return AppStrings.auth.errors.passwordLowercase;
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return AppStrings.auth.errors.passwordDigit;
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return AppStrings.auth.errors.passwordSpecial;
    }
    return null;
  };

  static FormFieldValidator<String> confirmPassword(
    TextEditingController passwordController,
  ) => (value) {
    if (value == null || value.isEmpty) {
      return AppStrings.auth.errors.confirmPasswordRequired;
    }
    if (value != passwordController.text) {
      return AppStrings.auth.errors.passwordMismatch;
    }
    return null;
  };

  static FormFieldValidator<String> get fullName => (value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.auth.errors.nameRequired;
    }
    final trimmed = value.trim();
    if (trimmed.split(RegExp(r'\s+')).length < 2) {
      return AppStrings.auth.errors.fullNameRequired;
    }
    if (!RegExp(r"^[a-zA-Z '\-]+$").hasMatch(trimmed)) {
      return AppStrings.auth.errors.nameInvalid;
    }
    return null;
  };

  static FormFieldValidator<String> get phone => (value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.auth.errors.phoneRequired;
    }
    final stripped = value.replaceAll(RegExp(r'[\s\-()]'), '');
    if (!RegExp(r'^\+?\d{10,15}$').hasMatch(stripped)) {
      return AppStrings.auth.errors.phoneInvalid;
    }
    return null;
  };

  static FormFieldValidator<String> otp(int length) => (value) {
    if (value == null || value.isEmpty) {
      return AppStrings.auth.errors.otpRequired;
    }
    if (!RegExp('^\\d{$length}\$').hasMatch(value)) {
      return AppStrings.auth.errors.otpInvalid;
    }
    return null;
  };

  static FormFieldValidator<String> requiredMessage(String message) => (value) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  };

  static final RegExp addressLinePattern = RegExp(
    '^'
    r'\d{1,5}\s*,\s*'
    r"(?:[A-Za-z0-9][A-Za-z0-9\s.'\-]{1,58}\s*,\s*){2,}"
    r"[A-Za-z0-9][A-Za-z0-9\s.'\-]{2,58}"
    r'$',
  );

  static bool isValidAddressLine(String? value) {
    if (value == null) return false;
    final trimmed = value.trim();
    if (trimmed.length < 10 || trimmed.length > 200) return false;
    return addressLinePattern.hasMatch(trimmed);
  }

  static final RegExp promoCodePattern = RegExp(r'^[A-Z0-9]{4,12}$');

  static bool isValidPromoCode(String? value) {
    if (value == null) return false;
    final trimmed = value.trim().toUpperCase();
    return promoCodePattern.hasMatch(trimmed);
  }

  static FormFieldValidator<String> get promoCode => (value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.promos.errors.required;
    }
    if (!isValidPromoCode(value)) {
      return AppStrings.promos.errors.invalid;
    }
    return null;
  };

  static FormFieldValidator<String> get addressLine => (value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.addresses.errors.required;
    }
    return null;
  };
}
