// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../../data/finance_question_data.dart';
// import '../../data/finance_question_data.dart';
// import '../../models/finance_question_model.dart';
// import '../../models/finance_questions.dart';
// import '../../models/options.dart';
// import 'finance_option_widget.dart';
//
// class FinanceQuestionWidget extends StatelessWidget {
//   final FinanceCategoryModel category;
//   final PageController controller;
//   final ValueChanged<Option> onClickedOption;
//   final ValueChanged<int> onChangedPage;
//
//   const FinanceQuestionWidget(
//       {required this.category,
//       required this.onClickedOption,
//       required this.onChangedPage,
//       required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       onPageChanged: onChangedPage,
//       itemBuilder: (context, index) {
//         final question = category.financeQuestions[index];
//         return buildQuestion(question: question);
//       },
//     );
//   }
//
//   Widget buildQuestion({required FinanceQAModel question}) => Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 25,
//             ),
//             Text(
//               question.questionText,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Text('pls choose as it best fits you!! '),
//             const SizedBox(
//               height: 25,
//             ),
//             Expanded(
//                 child: FinanceOptionsWidget(
//               financeQuestion: question,
//               onClickedOption: onClickedOption,
//             ))
//           ],
//         ),
//       );
// }
