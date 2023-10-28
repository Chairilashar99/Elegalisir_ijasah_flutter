import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final List<String> steps;
  final int currentStep;
  final ValueChanged<int>? onStepTapped;

  CustomStepper({
    required this.steps,
    required this.currentStep,
    this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(steps.length, (index) {
        bool isCompleted = index < currentStep;
        bool isCurrent = index == currentStep;

        Color iconColor =
            (isCompleted || isCurrent) ? Colors.green : Colors.grey;
        Color textColor =
            (isCompleted || isCurrent) ? Colors.white : Colors.grey;

        IconData iconData =
            (isCompleted || isCurrent) ? Icons.check_circle : Icons.circle;

        return InkWell(
          onTap: () {
            if (onStepTapped != null) onStepTapped!(index);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isCurrent ? Colors.white : Colors.grey[200],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    iconData,
                    color: iconColor,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  steps[index].replaceAll(" ", "\n"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
