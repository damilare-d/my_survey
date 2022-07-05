import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool isPlaying = false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      isPlaying = controller.state == ConfettiControllerState.playing;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
              child: Center(
                  child: Column(
            children: [
              const Text(
                'Thanks for making mySurvey be a part of your conscious growth process',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              const Text(
                'do click on the submit button afterwards',
                style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  if (isPlaying) {
                    controller.stop();
                  } else {
                    controller.play();
                  }
                },
                child: Text(isPlaying ? 'submit' : 'submit',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ],
          ))),
        ),
        ConfettiWidget(
          confettiController: controller,
          blastDirectionality: BlastDirectionality
              .explosive, // don't specify a direction, blast randomly
          shouldLoop: true, // start again as soon as the animation is finished
          colors: const [
            Colors.blueAccent,
            Colors.grey,
            Colors.greenAccent,
            Colors.lightBlueAccent,
            Colors.lightGreenAccent
          ], // manually specify the colors to be used
          createParticlePath: drawStar, // define a custom shape/path.
        ),
      ],
    );
  }
}
