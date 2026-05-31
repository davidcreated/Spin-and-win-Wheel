import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformTapTarget extends StatelessWidget {
  const PlatformTapTarget({
    required this.child,
    super.key,
    this.onTap,
    this.borderRadius,
    this.customBorder,
    this.enforceMinimumSize = true,
  });

  final Widget child;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final bool enforceMinimumSize;

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    void handleTap() {
      if (onTap == null) return;
      HapticFeedback.selectionClick();
      onTap!();
    }

    final interactiveWidget = isIOS
        ? CupertinoButton(
            padding: EdgeInsets.zero,
            pressedOpacity: 0.7,
            onPressed: onTap == null ? null : handleTap,
            minimumSize: Size.zero,
            child: child,
          )
        : Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap == null ? null : handleTap,
              borderRadius: borderRadius,
              customBorder: customBorder,
              child: child,
            ),
          );

    if (!enforceMinimumSize) return interactiveWidget;

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: interactiveWidget,
      ),
    );
  }
}
