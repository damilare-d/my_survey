import 'package:flutter/material.dart';
import '../../models/finance_questions.dart';

class FinanceQuestionNumberWidget extends StatelessWidget {
  final List<SurveyQAModel> questions;
  SurveyQAModel question;
  final ValueChanged<int> onClickedNumber;

  FinanceQuestionNumberWidget(
      {Key? key,
      required this.questions,
      required this.question,
      required this.onClickedNumber})
      : super(key: key);

  @override
  final double padding = 16;
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: padding),
        itemCount: questions.length,
        separatorBuilder: (context, index) => Container(
          width: padding,
        ),
        itemBuilder: (context, index) {
          final isSelected = question == questions[index];
          return buildNumber(index: index, isSelected: isSelected);
        },
      ),
    );
  }

  Widget buildNumber({required int index, required bool isSelected}) {
    final color = isSelected ? Colors.redAccent : Colors.white;

    return GestureDetector(
      onTap: () => onClickedNumber(index),
      child: CircleAvatar(
        backgroundColor: color,
        child: Text(
          '${index + 1} ',
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
