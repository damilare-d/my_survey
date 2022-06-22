import 'package:my_survey/models/my_questions.dart';
import 'package:my_survey/models/options.dart';

final questions = [
  Question(
    questionText: 'describe yourself: do you love a good party',
    options: [
      Option(code: "A", optionText: 'Never'),
      Option(code: "B", optionText: 'Rarely'),
      Option(code: "C", optionText: 'Sometimes'),
      Option(code: "D", optionText: 'Usually'),
      Option(code: "E", optionText: 'Always'),
    ],
  ),
  Question(
      questionText: 'describe yourself: do you enjoy going to a good party',
      options: [
        Option(code: "A", optionText: 'Never'),
        Option(code: "B", optionText: 'Rarely'),
        Option(code: "C", optionText: 'Sometimes'),
        Option(code: "D", optionText: 'Usually'),
        Option(code: "E", optionText: 'Always'),
      ]),
];
