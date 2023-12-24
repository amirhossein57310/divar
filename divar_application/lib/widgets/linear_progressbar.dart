import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class LinearProgressBarWidget extends StatelessWidget {
  final int step;
  const LinearProgressBarWidget(
    this.step, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: LinearProgressBar(
        minHeight: 6,
        maxSteps: 5,
        progressType:
            LinearProgressBar.progressTypeLinear, // Use Linear progress
        currentStep: step,
        progressColor: Colors.red,
        backgroundColor: Colors.white,
      ),
    );
  }
}
