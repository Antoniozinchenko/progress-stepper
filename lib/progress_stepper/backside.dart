import 'package:flutter/material.dart';

import 'progress_stepper.dart';

class BackSide extends StatelessWidget {
  const BackSide({
    super.key,
    required this.steps,
  });

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
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
                    color: Colors.black,
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
