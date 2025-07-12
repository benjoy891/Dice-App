import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// Stateless Widgets - Can only be used to present UI
// Stateful - Used for functions and executable code

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstGradient, this.secondGradient, {super.key});

  // This is a named constructor called 'purple' for the GradientContainer class.
  // It lets you create a GradientContainer with preset colors.
  // When you use GradientContainer.purple(), it will use lightGreen as the first color
  // and blueGrey as the second color for the gradient.
  const GradientContainer.purple({super.key})
    : firstGradient = const Color.fromARGB(255, 240, 222, 246),
      secondGradient = const Color.fromARGB(255, 227, 153, 153);

  final Color firstGradient;
  final Color secondGradient;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstGradient, secondGradient],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
