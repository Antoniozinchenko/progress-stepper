
import 'package:flutter/material.dart';
import 'package:progress_stepper/progress_stepper/progress_stepper.dart';

class FrontSide extends StatelessWidget {
  const FrontSide({
    super.key,
    required this.steps,
  });

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: ProgressStepper.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: steps
            .map(
              (e) => Expanded(
                child: Text(
                  e,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
