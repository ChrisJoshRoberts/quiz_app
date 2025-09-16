import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;
  const AnswerButton(this.answerText, this.onTap, {super.key});
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.white10,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      ),
    );
  }
}
