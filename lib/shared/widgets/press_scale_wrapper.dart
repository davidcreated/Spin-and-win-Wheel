import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motobites/core/services/haptics_service.dart';
import 'package:motobites/core/theme/app_animations.dart';

class PressScaleWrapper extends StatefulWidget {
  const PressScaleWrapper({
    required this.child,
    required this.onPressed,
    super.key,
    this.borderRadius = BorderRadius.zero,
  });

  final Widget child;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;

  @override
  State<PressScaleWrapper> createState() => _PressScaleWrapperState();
}

class _PressScaleWrapperState extends State<PressScaleWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppAnimations.pressDuration,
      reverseDuration: AppAnimations.releaseDuration,
    );
    _scale = Tween<double>(begin: 1, end: 0.93).animate(
      CurvedAnimation(
        parent: _controller,
        curve: AppAnimations.pressInCurve,
        reverseCurve: AppAnimations.springCurve,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scale,
      child: Material(
        color: Colors.transparent,
        borderRadius: widget.borderRadius,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: (_) => unawaited(_controller.forward()),
          onTapUp: (_) {
            unawaited(_controller.reverse());
            HapticsService.selection();
            widget.onPressed();
          },
          onTapCancel: () => unawaited(_controller.reverse()),
          child: widget.child,
        ),
      ),
    );
  }
}
