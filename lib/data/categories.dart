import 'package:flutter/material.dart';
import 'package:my_survey/data/questiondata.dart';
import 'package:my_survey/models/category.dart';

final categories = <Category>[
  Category(
    icon: Icons.favorite,
    questions: questions,
    imageURL: '',
    categoryName: 'Love',
    backgroundColor: Colors.blueAccent,
  ),
  Category(
    icon: Icons.attach_money,
    questions: questions,
    imageURL: '',
    categoryName: 'Finance',
    backgroundColor: Colors.lightBlueAccent,
  ),
  Category(
    icon: Icons.person,
    questions: questions,
    imageURL: '',
    categoryName: 'Personality',
    backgroundColor: Colors.greenAccent,
  ),
  Category(
    icon: Icons.health_and_safety,
    questions: questions,
    imageURL: '',
    categoryName: 'Health',
    backgroundColor: Colors.grey,
  ),
];
