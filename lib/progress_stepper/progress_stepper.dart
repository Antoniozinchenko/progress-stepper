import 'package:flutter/material.dart';
import 'package:progress_stepper/progress_stepper/frontside.dart';

import 'backside.dart';
import 'progress_clipper.dart';

class ProgressStepper extends StatelessWidget {
  const ProgressStepper({
    Key? key,
    required this.steps,
    required this.activeStep,
  }) : super(key: key);
  final List<String> steps;
  final int activeStep;

  static const height = 40.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final progressWidth =
          constraints.maxWidth / steps.length * (activeStep + 1);
      return SizedBox(
        height: height,
        child: Stack(
          children: [
            BackSide(steps: steps),
            TweenAnimationBuilder<double>(
              tween: Tween(
                begin: 0,
                end: progressWidth,
              ),
              duration: const Duration(milliseconds: 900),
              curve: Curves.bounceOut,
              builder: (context, value, child) {
                return ClipPath(
                  clipper: ProgressClipper(width: value),
                  child: child,
                );
              },
              child: FrontSide(steps: steps),
            ),
          ],
        ),
      );
    });
  }
}
