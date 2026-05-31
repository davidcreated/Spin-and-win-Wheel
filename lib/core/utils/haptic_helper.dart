import 'package:flutter/services.dart';

class HapticHelper {
  static const _channel = MethodChannel('com.motobites/haptic');

  static Future<void> errorFeedback() async {
    try {
      await _channel.invokeMethod<void>('errorFeedback');
    } on PlatformException {
      await HapticFeedback.heavyImpact();
    } on MissingPluginException {
      await HapticFeedback.heavyImpact();
    }
  }

  static Future<void> light() => HapticFeedback.lightImpact();
  static Future<void> medium() => HapticFeedback.mediumImpact();
  static Future<void> heavy() => HapticFeedback.heavyImpact();
  static Future<void> selection() => HapticFeedback.selectionClick();
}
