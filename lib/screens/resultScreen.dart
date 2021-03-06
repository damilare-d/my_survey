import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:my_survey/models/category.dart';
import 'package:my_survey/models/my_questions.dart';
import 'package:my_survey/screens/onBoarding%20screens/login_screen.dart';

import '../data/questiondata.dart';
import '../models/my_questions.dart';

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
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Thanks for making mySurvey\nbe a part of your conscious growth process',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                const Text(
                  'do click on the submit button if you are done with the survey',
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 25),
                TextButton(
                  onPressed: () {
                    if (isPlaying) {
                      controller.stop();
                    } else {
                      controller.play();
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FinalResultPage(
                              category: SurveyCategoryModel(
                                  icon: Icons.favorite,
                                  questions: questions,
                                  categoryName: 'Love'),
                            )));
                  },
                  child: Text(isPlaying ? 'SUBMIT' : 'SUBMIT',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            )),
          )),
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

class FinalResultPage extends StatelessWidget {
  final SurveyCategoryModel category;
  const FinalResultPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.separated(
                itemCount: category.questions.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: ((context, index) {
                  final question = category.questions[index];
                  return buildAnswer(
                    context,
                    question,
                    index,
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  child: Text(
                    'EXIT',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  color: Colors.blue,
                  child: Text(
                    'ANALYSE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(BuildContext context, Question question, int index) {
    return Center(
      child: Column(
        children: [
          Text(
            category.questions[index].questionText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(height: 10),
          Text(category.questions[index].selectedOption?.optionText ??
              'Not Answered'),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
