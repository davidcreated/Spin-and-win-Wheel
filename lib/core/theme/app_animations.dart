import 'package:flutter/animation.dart';

abstract final class AppAnimations {
  static const Duration splashFadeIn = Duration(milliseconds: 600);
  static const Duration pressDuration = Duration(milliseconds: 100);
  static const Duration releaseDuration = Duration(milliseconds: 320);
  static const Duration focusDuration = Duration(milliseconds: 180);
  static const Duration dotTransitionDuration = Duration(milliseconds: 220);
  static const Duration pageDuration = Duration(milliseconds: 350);
  static const Duration splashTotalDuration = Duration(milliseconds: 2200);
  static const Duration devTripleTapSequenceWindow =
      Duration(milliseconds: 600);
  static const Duration dotCycleDuration = Duration(milliseconds: 1200);
  static const Duration loaderRotationDuration = Duration(milliseconds: 1000);
  static const Duration successRevealDuration = Duration(milliseconds: 1500);
  static const Duration searchWaveDuration = Duration(milliseconds: 2400);
  static const double splashFadeInterval = 0.27;

  static const Curve pressInCurve = Curves.easeOut;
  static const Curve springCurve = Cubic(0.34, 1.56, 0.64, 1);
  static const Curve focusCurve = Curves.easeInOut;
  static const Curve dotCurve = Curves.easeInOut;
  static const Curve pageCurve = Curves.easeInOut;
}
