import 'package:flutter/material.dart';

import 'progress_stepper/progress_stepper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final steps = ['Ready', 'Steady', 'GO!'];
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ProgressStepper(
              steps: steps,
              activeStep: activeStep,
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                if (activeStep == 0) return;
                setState(() {
                  activeStep--;
                });
              },
              child: const Text('prev'),
            ),
          const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {
                if (activeStep == steps.length - 1) return;
                setState(() {
                  activeStep++;
                });
              },
              child: const Text('next'),
            ),
          ],
        ));
  }
}
