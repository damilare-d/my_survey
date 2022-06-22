import 'package:flutter/material.dart';
import 'options.dart';

class Question {
  final String questionText;
  List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.questionText,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}
