import 'package:flutter/material.dart';
import 'my_questions.dart';

class SurveyCategoryModel {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageURL;

  SurveyCategoryModel({
    required this.icon,
    required this.categoryName,
    required this.questions,
    required this.imageURL,
    this.backgroundColor = Colors.blue,
    this.description = '',
  });
}
