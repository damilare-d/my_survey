import 'package:flutter/material.dart';
import 'my_questions.dart';

class SurveyCategoryModel {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;

  SurveyCategoryModel({
    required this.icon,
    required this.categoryName,
    required this.questions,
    this.backgroundColor = Colors.blue,
    this.description = '',
  });

  checkCategoryName() {}
}
