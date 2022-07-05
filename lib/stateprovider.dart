import 'package:flutter/material.dart';
import 'package:my_survey/models/my_questions.dart';
import 'models/finance_questions.dart';
import 'models/options.dart';

class DolapoController extends ChangeNotifier {
  final List answers = [];
  getAnswers(String answer) {
    answers.add(answer);
    notifyListeners();
  }

  final List<SurveyQAModel> financeQuestions = [
    SurveyQAModel(
        questionText: 'describe yourself: do you love to save ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to love ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to sing ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to dance ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
  ];

  final List<SurveyQAModel> HealthQuestions = [
    SurveyQAModel(
        questionText: 'describe yourself: do you love to save ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to love ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to sing ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to dance ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
  ];

  final List<SurveyQAModel> LoveQuestions = [
    SurveyQAModel(
        questionText: 'describe yourself: do you love to save ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to love ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to sing ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to dance ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
  ];

  final List<SurveyQAModel> PersonalityQuestions = [
    SurveyQAModel(
        questionText: 'describe yourself: do you love to save ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to love ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to sing ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
    SurveyQAModel(
        questionText: 'describe yourself: do you love to dance ',
        options: ['yes', 'no', 'maybe', 'sometimes', 'always']),
  ];

  final List<String> groupValue = [
    '',
    '',
    '',
    '',
  ];

  void onAnswerPicked(String? value) {
    groupValue[pageNumber] = value!;
    notifyListeners();
  }

  void nextQuestion() {
    if (pageNumber != financeQuestions.length - 1) {
      pageNumber++;
      notifyListeners();
    }
  }

  void previousQuestion() {
    if (pageNumber != 0) {
      pageNumber--;
      notifyListeners();
    }
  }

  int pageNumber = 0;
}
