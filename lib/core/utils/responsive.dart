import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

extension ResponsiveNum on num {
  static const double _designWidth = 375;
  static const double _designHeight = 812;

  double get w => toDouble() * SizerUtil.width / _designWidth;
  double get h => toDouble() * SizerUtil.height / _designHeight;
  double get sp => toDouble() * SizerUtil.width / _designWidth;
  double get r => toDouble() * SizerUtil.width / _designWidth;
}

enum DeviceFormFactor { phone, fold, tablet }

extension ResponsiveContext on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  DeviceFormFactor get formFactor {
    if (screenWidth < 500) return DeviceFormFactor.phone;
    if (screenWidth < 768) return DeviceFormFactor.fold;
    return DeviceFormFactor.tablet;
  }

  bool get isPhone => formFactor == DeviceFormFactor.phone;
  bool get isFold => formFactor == DeviceFormFactor.fold;
  bool get isTablet => formFactor == DeviceFormFactor.tablet;
  bool get isWideScreen => isFold || isTablet;
}

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    required this.phone,
    this.fold,
    this.tablet,
    super.key,
  });

  final WidgetBuilder phone;
  final WidgetBuilder? fold;
  final WidgetBuilder? tablet;

  @override
  Widget build(BuildContext context) {
    if (context.isTablet && tablet != null) return tablet!(context);
    if (context.isWideScreen && fold != null) return fold!(context);
    return phone(context);
  }
}
