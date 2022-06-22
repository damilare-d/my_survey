import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_survey/models/category.dart';
import 'package:my_survey/models/my_questions.dart';

class QuestionWidget extends StatelessWidget {
  final Category category;
  const QuestionWidget(this.category);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        final question = category.questions[index];

        return buildQuestion(question: question);
      },
    );
  }

  Widget buildQuestion( {
    required Question question}) =>
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            Text(
              question.questionText,
              style:const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5,),
            const Text(
              'pls choose as it best fits you!! '
            ),
            const SizedBox( height: 25,),
            Expanded(
                child: optionWidget(

                )

            )

          ],
        ),
      )
}
