import 'package:flutter/material.dart';
import 'package:my_survey/stateprovider.dart';
import 'package:provider/provider.dart';
import '../Widgets/questionWidgets.dart';
import '../Widgets/question_number_widget.dart';
import '../models/category.dart';
import '../models/my_questions.dart';
import '../models/options.dart';

class FinanceCategoryPage extends StatefulWidget {
  final SurveyCategoryModel financeCategory;
  const FinanceCategoryPage({
    Key? key,
    required this.financeCategory,
  }) : super(key: key);

  @override
  State<FinanceCategoryPage> createState() => _FinanceCategoryPageState();
}

class _FinanceCategoryPageState extends State<FinanceCategoryPage> {
  PageController? controller;
  Question? question;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   controller = PageController();
  //   question = widget.financeCategory.questions.first;
  // }
  //
  // void selectOption(Option option) {
  //   if (question!.isLocked) {
  //     return;
  //   } else {
  //     setState(() {
  //       question!.isLocked = true;
  //       question!.selectedOption = option;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: const Text('Question'),
          ),
      body: Consumer<DolapoController>(builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text('Question ${model.pageNumber + 1}'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const QWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () => model.previousQuestion(),
                    child: Text('Previous'),
                  ),
                  MaterialButton(
                    onPressed: () => model.nextQuestion(),
                    child: Text('Next'),
                  )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

//   void nextQuestion({required int index, bool jump = false}) {
//     final pageController = controller?.page;
//     final nextPage = (pageController ?? 0) + 1;
//     //final indexPage = index ?? nextPage.toInt();
//     var indexPage = 0;
//     if (indexPage == index) {
//       indexPage = index;
//     } else {
//       indexPage = nextPage.toInt();
//     }
//     setState(() {
//       question = widget.financeCategory.questions[indexPage];
//     });
//     if (jump) {
//       controller?.jumpToPage(indexPage);
//     }
//   }

// Widget buildCategoryAppBar(context) => AppBar(
//       title: Text(widget.financeCategory.categoryName),
//       actions: const [
//         Icon(Icons.filter_alt_outlined),
//         SizedBox(
//           width: 16,
//         )
//       ],
//       flexibleSpace: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Colors.grey,
//             Colors.lightBlueAccent,
//             Colors.greenAccent
//           ], begin: Alignment.topRight, end: Alignment.bottomLeft),
//         ),
//       ),
//       bottom: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: Container(
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           child: QuestionNumberWidget(
//               questions: widget.financeCategory.questions,
//               question: question!,
//               }),
//         ),
//       ),
//     );
// }
