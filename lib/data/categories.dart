import 'package:flutter/material.dart';
import 'package:my_survey/data/questiondata.dart';
import 'package:my_survey/models/category.dart';
import 'package:my_survey/models/my_questions.dart';

final categories = <SurveyCategoryModel>[
  SurveyCategoryModel(
    icon: Icons.favorite,
    questions: questions.where((e) => e.type == QuestionType.loveType).toList(),
    categoryName: 'Love',
    backgroundColor: Colors.blueAccent,
  ),
  SurveyCategoryModel(
    icon: Icons.attach_money,
    questions: questions.where((e) => e.type == QuestionType.finance).toList(),
    categoryName: 'Finance',
    backgroundColor: Colors.lightBlueAccent,
  ),
  SurveyCategoryModel(
    icon: Icons.person,
    questions:
        questions.where((e) => e.type == QuestionType.personality).toList(),
    categoryName: 'Personality',
    backgroundColor: Colors.greenAccent,
  ),
  SurveyCategoryModel(
    icon: Icons.health_and_safety,
    questions: questions.where((e) => e.type == QuestionType.health).toList(),
    categoryName: 'Health',
    backgroundColor: Colors.grey,
  ),
];
