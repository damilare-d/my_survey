import 'package:flutter/material.dart';
import 'package:my_survey/models/category.dart';
import '../Widgets/QuestionWidgets.dart';
import '../models/my_questions.dart';
import '../models/options.dart';

class CategoryPage extends StatefulWidget {
  final Category category;
  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  PageController? controller;
  Question? question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.category.questions.first;
  }

  void selectOption(Option option) {
    if (question!.isLocked) {
      return;
    } else {
      setState(() {
        question?.isLocked = true;
        question?.selectedOption = option;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuestionWidget(
        category: widget.category,
        onChangedPage: (index) {
          return nextQuestion(index: index);
        },
        onClickedOption: (Option value) {},
        controller: controller!,
      ),
    );
  }

  void nextQuestion({required int index}) {
    final pageController = controller?.page;
    final nextPage = (pageController ?? 0) + 1;
    //final indexPage = index ?? nextPage.toInt();
    var indexPage = 0;
    if (indexPage == index) {
      indexPage = index;
    } else {
      indexPage = nextPage.toInt();
    }

    setState(() {
      question = widget.category.questions[indexPage];
    });
  }
}
