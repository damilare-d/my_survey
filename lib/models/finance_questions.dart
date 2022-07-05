import 'package:flutter/material.dart';
import 'options.dart';

class SurveyQAModel {
  final String questionText;
  List<String> options;

  SurveyQAModel({
    required this.questionText,
    required this.options,
  });
}

enum SurveyQuestionType {
  financeQuestions,
  LoveQuestions,
  HealthQuestions,
  PersonalityQuestions
}
