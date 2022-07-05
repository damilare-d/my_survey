import 'package:flutter/material.dart';
import 'my_questions.dart';

class FinanceCategoryModel {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageURL;

  FinanceCategoryModel({
    required this.icon,
    required this.categoryName,
    required this.questions,
    required this.imageURL,
    this.backgroundColor = Colors.blue,
    this.description = '',
  });
}
