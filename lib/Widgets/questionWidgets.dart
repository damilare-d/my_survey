import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/category.dart';
import '../models/my_questions.dart';
import '../models/options.dart';
import '../stateprovider.dart';
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
    return Consumer<DolapoController>(builder: (context, model, _) {
      return PageView.builder(
        controller: controller,
        onPageChanged: onChangedPage,
        itemBuilder: (context, index) {
          final financeQuestion = model.financeQuestions;
          final question = category.questions[index];
          return buildQuestion(question: question, index: index);
        },
      );
    });
  }

  Widget buildQuestion({required Question question, required int index}) =>
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
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      );
}

class QWidget extends StatefulWidget {
  const QWidget({Key? key}) : super(key: key);

  @override
  State<QWidget> createState() => _QWidgetState();
}

class _QWidgetState extends State<QWidget> {
  Color colour = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Consumer<DolapoController>(builder: (context, model, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: SizedBox(
                height: 100,
                child: Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(model
                          .financeQuestions[model.pageNumber].questionText),
                    ))),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: model.financeQuestions[model.pageNumber].options.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    colour = Colors.greenAccent;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: colour),
                  child: RadioListTile(
                    value:
                        model.financeQuestions[model.pageNumber].options[index],
                    title: Text(
                      model.financeQuestions[model.pageNumber].options[index],
                    ),
                    groupValue: model.groupValue[model.pageNumber],
                    onChanged: (String? value) => model.onAnswerPicked(value),
                  ),
                ),
              );
            },
          )
        ],
      );
    });
  }
}
