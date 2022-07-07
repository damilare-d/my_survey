import 'package:flutter/material.dart';
import 'package:my_survey/models/my_questions.dart';
import 'package:my_survey/models/options.dart';
import 'package:my_survey/utils.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: Utils.heightBetween(
          question.options
              .map<Widget>((option) => buildOption(context, option))
              .toList(),
          height: 8),
    );
  }

  buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
        onTap: () {
          onClickedOption(option);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: buildAnswer(option),
        ));
  }

  buildAnswer(Option option) {
    return Container(
      height: 50,
      child: Row(children: [
        Text(
          option.code,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          option.optionText,
          style: const TextStyle(fontSize: 20),
        )
      ]),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (!isSelected) {
      return Colors.grey;
    } else {
      return Colors.greenAccent;
    }
  }
}
