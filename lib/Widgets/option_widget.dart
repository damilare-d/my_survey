import 'package:flutter/material.dart';
import 'package:my_survey/data/questiondata.dart';
import 'package:my_survey/models/my_questions.dart';
import 'package:my_survey/models/options.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget(
      {Key? key, required this.question, required this.onClickedOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        widget(
            children: question.options
                .map((option) => buildOption(context, option))
                .toList()),
      ],
    );
  }

  buildOption(BuildContext context, Option option) {
    return GestureDetector(
        onTap: () => onClickedOption(option),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.grey),
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

  widget({required List children}) {}
}
