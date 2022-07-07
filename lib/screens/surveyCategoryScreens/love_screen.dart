import 'package:flutter/material.dart';
import 'package:my_survey/models/category.dart';
import '../../Widgets/questionWidgets.dart';
import '../../Widgets/question_number_widget.dart';
import '../../models/my_questions.dart';
import '../../models/options.dart';

class LoveCategoryPage extends StatefulWidget {
  final SurveyCategoryModel loveCategory;
  const LoveCategoryPage({Key? key, required this.loveCategory})
      : super(key: key);

  @override
  State<LoveCategoryPage> createState() => _LoveCategoryPageState();
}

class _LoveCategoryPageState extends State<LoveCategoryPage> {
  PageController? controller;
  Question? question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.loveCategory.questions.first;
  }

  void selectOption(Option option) {
    setState(() {
      //question!.isLocked = true;
      question!.selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: buildCategoryAppBar(context)),
      body: QuestionWidget(
        category: widget.loveCategory,
        onChangedPage: (index) {
          return nextQuestion(index: index, jump: true);
        },
        onClickedOption: selectOption,
        controller: controller!,
      ),
    );
  }

  void nextQuestion({required int index, bool jump = false}) {
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
      question = widget.loveCategory.questions[indexPage];
    });
    if (jump) {
      controller?.jumpToPage(indexPage);
    }
  }

  Widget buildCategoryAppBar(context) => AppBar(
        title: Text(widget.loveCategory.categoryName),
        actions: const [
          Icon(Icons.filter_alt_outlined),
          SizedBox(
            width: 16,
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.grey,
              Colors.lightBlueAccent,
              Colors.greenAccent
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: QuestionNumberWidget(
              questions: widget.loveCategory.questions,
              question: question!,
              onQuestionNumberChangedCallback: (index) {
                nextQuestion(index: index);
              },
              // onClickedNumber: (index) {
              //return nextQuestion(index: index);
              //}
            ),
          ),
        ),
      );
}
