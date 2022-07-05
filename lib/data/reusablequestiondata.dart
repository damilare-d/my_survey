// import 'package:my_survey/models/my_questions.dart';
// import 'package:my_survey/models/options.dart';
//
// final questions = [
//   Question(
//     questionText: 'describe yourself: do you love a good party',
//     options: [
//       Option(code: "A", optionText: 'Never'),
//       Option(code: "B", optionText: 'Rarely'),
//       Option(code: "C", optionText: 'Sometimes'),
//       Option(code: "D", optionText: 'Usually'),
//       Option(code: "E", optionText: 'Always'),
//     ],
//   ),
//   Question(
//       questionText: 'describe yourself: do you enjoy going to a good party',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]),
//   Question(
//       questionText: 'do you enjoy going to museum and cultural events',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you like to talk about feeling and emotions',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you like to keep a schedule',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you keep a steady stream of conversation',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you like to agree and keeo the peace',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you keep a very clean house',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you like to travel to exotic places',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'can you describe yourself as a social butterfly',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you enjoy traveling to exotic places',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you have a  strict system of staying organized',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'can you describe yourself as sensitive',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you describe yourself to be loyal to traditions',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you describe yourself to always avoid conflict',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you describe yourself to put work before play',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you like a lot of alone time',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you have many friends',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you love competition',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   ),
//   Question(
//       questionText: 'do you go to events punctual',
//       options: [
//         Option(code: "A", optionText: 'Never'),
//         Option(code: "B", optionText: 'Rarely'),
//         Option(code: "C", optionText: 'Sometimes'),
//         Option(code: "D", optionText: 'Usually'),
//         Option(code: "E", optionText: 'Always'),
//       ]
//   )
// ];
