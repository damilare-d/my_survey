import 'package:flutter/material.dart';
import 'package:my_survey/Widgets/survey_category_widget.dart';
import '../data/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
        title: Text('My Survey'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomLeft,
              child: buildWelcome('damilare')),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.grey,
              Colors.lightBlueAccent,
              Colors.greenAccent
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [SurveyCategories()],
      ),
    );
  }

  Widget buildWelcome(String username) {
    return Column(
      children: [
        const Text(
          'Hello',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          username,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  SurveyCategories() {
    return Container(
      height: 250,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 4 / 3,
        ),
        children: categories
            .map((category) => SurveyCategoriesWidget(
                  category: category,
                ))
            .toList(),
      ),
    );
  }
}
