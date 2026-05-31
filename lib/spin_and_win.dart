import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motobites/core/constants/constants.dart';
import 'package:motobites/core/utils/responsive.dart';
import 'package:motobites/shared/widgets/shared_widgets.dart';

class _WheelSegment {
  _WheelSegment({
    required this.label,
    required this.color,
    this.imageAsset,
    this.hasGradient = false,
    this.gradientColors,
  });
  final String label;
  final Color color;
  final String? imageAsset;
  final bool hasGradient;
  final List<Color>? gradientColors;
}

class SpinAndWin extends StatefulWidget {
  const SpinAndWin({
    this.onResult,
    this.onClose,
    this.spinDuration = const Duration(seconds: 4),
    this.minSpins = 5,
    this.seed,
    super.key,
  });

  final ValueChanged<String>? onResult;
  final VoidCallback? onClose;
  final Duration spinDuration;
  final int minSpins;
  final int? seed;

  @override
  State<SpinAndWin> createState() => _SpinAndWinState();
}

class _SpinAndWinState extends State<SpinAndWin>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Animation<double> _animation = const AlwaysStoppedAnimation<double>(0);
  late final Random _random;
  double _rotation = 0;
  bool _spinning = false;
  int? _resultIndex;

  final List<_WheelSegment> _segments = [
    _WheelSegment(
      label: 'Free\nDelivery',
      color: const Color(0xFFFFBF5B),
    ),
    _WheelSegment(
      label: 'Free\nSpin',
      color: const Color(0xFFF59600),
    ),
    _WheelSegment(
      label: 'N₂000\nCashback\non Amala',
      color: const Color(0xFF8B7355),
      imageAsset: 'assets/images/amala.png',
    ),
    _WheelSegment(
      label: 'Try again\nTomorrow',
      color: const Color(0xFFE72C2C),
    ),
    _WheelSegment(
      label: '1 Free\nDelivery',
      color: const Color(0xFFF59600),
    ),
    _WheelSegment(
      label: '10% Any\nMeal\nDiscount',
      color: const Color(0xFF00B392),
      hasGradient: true,
      gradientColors: const [
        Color(0xFF006F67),
        Color(0xFF00756B),
        Color(0xFF00B392),
        Color(0xFF00CBA2),
      ],
    ),
    _WheelSegment(
      label: 'iPhone\n17 Pro',
      color: const Color(0xFF3A3A3A),
      imageAsset: 'assets/images/17.png',
    ),
    _WheelSegment(
      label: '50% on\npasta',
      color: const Color(0xFF8B6B47),
      imageAsset: 'assets/images/pizza01.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _random = Random(widget.seed);
    _controller = AnimationController(
      vsync: this,
      duration: widget.spinDuration,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _spin() {
    if (_spinning || _segments.isEmpty) return;
    final count = _segments.length;
    final segmentAngle = (2 * pi) / count;
    final target = _random.nextInt(count);
    final intraOffset = (_random.nextDouble() - 0.5) * segmentAngle * 0.6;
    final end =
        _rotation +
        widget.minSpins * 2 * pi -
        target * segmentAngle +
        intraOffset;

    _animation = Tween<double>(begin: _rotation, end: end).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    setState(() {
      _spinning = true;
      _resultIndex = null;
    });

    _controller
      ..reset()
      ..forward().whenComplete(() {
        if (!mounted) return;
        setState(() {
          _rotation = end % (2 * pi);
          _spinning = false;
          _resultIndex = target;
        });
        widget.onResult?.call(_segments[target].label);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 555.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                Text(
                  AppStrings.deals.spinAndWinTitle,
                  style: AppTextStyles.raleway(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  AppStrings.deals.spinAndWinSubtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.raleway(
                    fontSize: 12.sp,
                    color: AppColors.hint,
                  ),
                ),
                SizedBox(height: 16.h),
                _buildWheelArea(),
                SizedBox(height: 16.h),
                Flexible(
                  child: _buildResultText(),
                ),
                const Spacer(),
                _buildSpinButton(),
              ],
            ),
          ),
          Positioned(
            top: 12.h,
            right: 12.w,
            child: PressScaleWrapper(
              onPressed: widget.onClose ?? () {},
              borderRadius: BorderRadius.circular(20.r),
              child: Container(
                key: const ValueKey('spin_close_button'),
                width: 32.w,
                height: 32.w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.scaffoldMuted,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  color: AppColors.text,
                  size: 18.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWheelArea() {
    const outerDiameter = 296.91;
    const outerTop = 2.32;
    const outerLeft = 3.58;

    final wheelSize = 260.w;

    return SizedBox(
      key: const ValueKey('spin_wheel'),
      width: (outerDiameter + outerLeft).w,
      height: (outerDiameter + outerTop).w + 24.h,
      child: Stack(
        children: [
          // ── Outer gradient ring ────────────────────────────────────────
          Positioned(
            top: outerTop,
            left: outerLeft,
            child: Container(
              width: outerDiameter.w,
              height: outerDiameter.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment(-0.707, 0.707),
                  end: Alignment(0.707, -0.707),
                  stops: [0.16, 0.4473, 0.8783],
                  colors: [
                    Color(0xFF000604),
                    Color(0xFF303030),
                    Color(0xFF000604),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 20,
                    spreadRadius: 4,
                  ),
                ],
              ),
            ),
          ),

          // ── Inner dark ring with blue border ───────────────────────────
          Positioned(
            top: outerTop + (outerDiameter.w - wheelSize) / 2,
            left: outerLeft + (outerDiameter.w - wheelSize) / 2,
            child: Container(
              width: wheelSize,
              height: wheelSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF1A1A1A),
                border: Border.all(
                  color: const Color(0xFF2962FF),
                  width: 6.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF2962FF).withValues(alpha: 0.3),
                    blurRadius: 16,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
          ),

          // ── Spinning wheel with segments ───────────────────────────────
          Positioned(
            top: outerTop + (outerDiameter.w - wheelSize) / 2,
            left: outerLeft + (outerDiameter.w - wheelSize) / 2,
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, _) {
                  return Transform.rotate(
                    angle: _animation.value,
                    child: CustomPaint(
                      size: Size(wheelSize, wheelSize),
                      painter: _WheelPainter(segments: _segments),
                    ),
                  );
                },
              ),
            ),
          ),

          // ── Center button (no icon, gradient background) ───────────────
          Positioned(
            top: outerTop + (outerDiameter.w / 2) - 28.w,
            left: outerLeft + (outerDiameter.w / 2) - 28.w,
            child: PressScaleWrapper(
              onPressed: _spin,
              borderRadius: BorderRadius.circular(56.r),
              child: Container(
                width: 56.w,
                height: 56.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    // 274.77deg
                    begin: Alignment(0.997, 0.083),
                    end: Alignment(-0.997, -0.083),
                    stops: [0.3264, 1.2775],
                    colors: [
                      Color(0xFF303030),
                      Color(0xFF000604),
                    ],
                  ),
                  border: Border.all(
                    color: const Color(0xFF2962FF),
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.4),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── White pointer at top-center ────────────────────────────────
          Positioned(
            top: 0,
            left: outerLeft + (outerDiameter.w / 2) - 9.w,
            child: CustomPaint(
              size: Size(18.w, 26.h),
              painter: _PointerPainter(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultText() {
    final result = _resultIndex;
    final text = _spinning
        ? AppStrings.deals.spinning
        : result == null
        ? ''
        : 'You won:\n${_segments[result].label}';
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: Text(
        text,
        key: ValueKey<String>(text),
        textAlign: TextAlign.center,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.raleway(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSpinButton() {
    return PressScaleWrapper(
      onPressed: _spinning ? () {} : _spin,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        key: const ValueKey('spin_button'),
        width: double.infinity,
        height: 52.h,
        decoration: BoxDecoration(
          color: _spinning
              ? AppColors.primary.withValues(alpha: 0.6)
              : AppColors.primary,
          borderRadius: BorderRadius.circular(8.r),
        ),
        alignment: Alignment.center,
        child: Text(
          _spinning ? AppStrings.deals.spinning : AppStrings.deals.spin,
          style: AppTextStyles.buttonLabel,
        ),
      ),
    );
  }
}

class _WheelPainter extends CustomPainter {
  _WheelPainter({
    required this.segments,
  });

  final List<_WheelSegment> segments;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide / 2;
    final count = segments.length;
    if (count == 0) return;

    final segmentAngle = (2 * pi) / count;
    final startAngle = -pi / 2 - segmentAngle / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Draw segments
    for (var i = 0; i < count; i++) {
      final segment = segments[i];
      final paint = Paint()..style = PaintingStyle.fill;

      if (segment.hasGradient && segment.gradientColors != null) {
        paint.shader = SweepGradient(
          startAngle: startAngle + i * segmentAngle,
          endAngle: startAngle + (i + 1) * segmentAngle,
          colors: segment.gradientColors!,
        ).createShader(rect);
      } else {
        paint.color = segment.color;
      }

      final path = Path()
        ..moveTo(center.dx, center.dy)
        ..arcTo(rect, startAngle + i * segmentAngle, segmentAngle, false)
        ..close();
      canvas.drawPath(path, paint);

      if (segment.imageAsset != null) {
        _drawImageInSegment(
          canvas,
          center,
          radius,
          startAngle + i * segmentAngle,
          segmentAngle,
          segment.imageAsset!,
        );
      }
    }

    // Draw divider lines between segments
    final dividerPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.15)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < count; i++) {
      final angle = startAngle + i * segmentAngle;
      canvas.drawLine(
        center,
        Offset(
          center.dx + radius * cos(angle),
          center.dy + radius * sin(angle),
        ),
        dividerPaint,
      );
    }

    // Draw text labels
    for (var i = 0; i < count; i++) {
      final segment = segments[i];
      final midAngle = startAngle + i * segmentAngle + segmentAngle / 2;
      canvas.save();
      canvas.translate(center.dx, center.dy);
      canvas.rotate(midAngle + pi / 2);
      final tp = TextPainter(
        text: TextSpan(
          text: segment.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            height: 1.1,
          ),
        ),
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        maxLines: 4,
        ellipsis: '…',
      )..layout(maxWidth: radius * 0.55);
      tp.paint(canvas, Offset(-tp.width / 2, -radius + 18));
      canvas.restore();
    }
  }

  void _drawImageInSegment(
    Canvas canvas,
    Offset center,
    double radius,
    double startAngle,
    double segmentAngle,
    String imagePath,
  ) {}

  @override
  bool shouldRepaint(_WheelPainter old) => old.segments != segments;
}

class _PointerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    final shadowPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black.withValues(alpha: 0.25)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

    // Shadow
    final shadowPath = Path()
      ..moveTo(size.width / 2, size.height + 2)
      ..lineTo(1, 2)
      ..lineTo(size.width - 1, 2)
      ..close();
    canvas.drawPath(shadowPath, shadowPaint);

    // Arrow
    final path = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_PointerPainter old) => false;
}
