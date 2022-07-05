import 'package:flutter/material.dart';
import 'options.dart';

class Question {
  final String questionText;
  List<Option> options;
  QuestionType? type;
  Option? selectedOption;
  Option? isSelected;

  Question({
    required this.questionText,
    required this.options,
    required this.type,
  });
}

enum QuestionType { loveType, finance, personality, health }

// _answerList() {
//   return Column(
//     children: questionList[currentQuestionIndex]
//         .answersList
//         .map(
//           (e) => _answerButton(e),
//     )
//         .toList(),
//   );
// }
//
// Widget _answerButton(Answer answer) {
//   bool isSelected = answer == selectedAnswer;
//
//   return Container(
//     width: double.infinity,
//     margin: const EdgeInsets.symmetric(vertical: 8),
//     height: 48,
//     child: ElevatedButton(
//       child: Text(answer.answerText),
//       style: ElevatedButton.styleFrom(
//         shape: const StadiumBorder(),
//         primary: isSelected ? Colors.orangeAccent : Colors.white,
//         onPrimary: isSelected ? Colors.white : Colors.black,
//       ),
//       onPressed: () {
//         if (selectedAnswer == null) {
//           if (answer.isCorrect) {
//
//           }
//           setState(() {
//             selectedAnswer = answer;
//           });
//         }
//       },
//     ),
//   );
