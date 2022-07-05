import 'package:flutter/material.dart';
import 'package:my_survey/models/category.dart';
import '../Widgets/questionWidgets.dart';
import '../Widgets/question_number_widget.dart';
import '../models/my_questions.dart';
import '../models/options.dart';

class FinancecategoryPage extends StatefulWidget {
  final SurveyCategoryModel FinanceCategory;
  const FinancecategoryPage({Key? key, required this.FinanceCategory})
      : super(key: key);

  @override
  State<FinancecategoryPage> createState() => _FinancecategoryPageState();
}

class _FinancecategoryPageState extends State<FinancecategoryPage> {
  PageController? controller;
  Question? question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.FinanceCategory.questions.first;
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
        category: widget.FinanceCategory,
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
      question = widget.FinanceCategory.questions[indexPage];
    });
    if (jump) {
      controller?.jumpToPage(indexPage);
    }
  }

  Widget buildCategoryAppBar(context) => AppBar(
        title: Text(widget.FinanceCategory.categoryName),
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
                questions: widget.FinanceCategory.questions,
                question: question!,
                onQuestionNumberChangedCallback: (index) {
                  nextQuestion(index: index);
                }
                // onClickedNumber: (index) {
                //return nextQuestion(index: index);
                //}
                ),
          ),
        ),
      );
}
