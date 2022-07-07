import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_survey/screens/resultScreen.dart';
import '../models/category.dart';
import '../models/my_questions.dart';
import '../models/options.dart';
import 'option_widget.dart';

class QuestionWidget extends StatelessWidget {
  final SurveyCategoryModel category;
  final PageController controller;
  final ValueChanged<Option> onClickedOption;
  final ValueChanged<int> onChangedPage;

  const QuestionWidget(
      {required this.category,
      required this.onClickedOption,
      required this.onChangedPage,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      onPageChanged: onChangedPage,
      itemBuilder: (context, index) {
        final question = category.questions[index];
        return buildQuestion(
            question: question, index: index, context: context);
      },
    );
  }

  Widget buildQuestion(
          {required BuildContext context,
          required Question question,
          required int index}) =>
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                category.questions[index].questionText,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'pls choose as it best fits you!! ',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: OptionsWidget(
                  question: question,
                  onClickedOption: onClickedOption,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {},
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultScreen()));
                    },
                    child: Text('Submit'),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
