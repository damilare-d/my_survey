import 'package:flutter/material.dart';
import 'package:my_survey/models/finance_question_model.dart';
import 'package:my_survey/screens/category_page.dart';
import 'package:my_survey/screens/finance_screen.dart';
import '../models/category.dart';
import '../screens/finance_screen1.dart';
import '../screens/health_screen.dart';
import '../screens/love_screen.dart';
import '../screens/personality_screen.dart';

class SurveyCategoriesWidget extends StatelessWidget {
  final SurveyCategoryModel category;

  const SurveyCategoriesWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (category.categoryName == 'Love') {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoveCategoryPage(
                    loveCategory: category,
                  )));
        }
        if (category.categoryName == 'Finance') {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FinancecategoryPage(
                    FinanceCategory: category,
                  )));
        }
        if (category.categoryName == 'Personality') {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PersonalityCategoryPage(
                    personalityCategory: category,
                  )));
        }
        if (category.categoryName == 'Health') {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HealthCategoryPage(
                    healthCategory: category,
                  )));
        }
      },
      child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: category.backgroundColor,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                category.icon,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(height: 12),
              Text(category.categoryName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          )),
    );
  }
}
