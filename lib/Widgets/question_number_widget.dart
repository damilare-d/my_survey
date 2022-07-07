import 'package:flutter/material.dart';
import '../models/my_questions.dart';

class QuestionNumberWidget extends StatefulWidget {
  final List<Question> questions;
  Question question;
  final void Function(int) onQuestionNumberChangedCallback;

  QuestionNumberWidget({
    Key? key,
    required this.questions,
    required this.question,
    required this.onQuestionNumberChangedCallback,
  }) : super(key: key);

  @override
  State<QuestionNumberWidget> createState() => _QuestionNumberWidgetState();
}

class _QuestionNumberWidgetState extends State<QuestionNumberWidget> {
  @override
  final double padding = 16;

  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: padding),
            itemCount: widget.questions.length,
            separatorBuilder: (context, index) => Container(
                  width: padding,
                ),
            itemBuilder: (context, index) {
              final isSelected = widget.question == widget.questions[index];
              final color = isSelected ? Colors.redAccent : Colors.white;
              return GestureDetector(
                onTap: () {
                  widget.onQuestionNumberChangedCallback(index - 1);
                },
                child: CircleAvatar(
                  backgroundColor: color,
                  child: Text(
                    '${index + 1} ',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }));
  }
}
