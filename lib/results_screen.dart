import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  const ResultsScreen(this.selectedAnswers, {super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Text(
              'You answered 3 out of 6 questions correctly!',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ...selectedAnswers.map((userAnswer) {
              return Text(
              userAnswer,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              );
            }),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: FilledButton.icon(
              onPressed: () {},
              style: FilledButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.white10,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: Icon(Icons.restart_alt_rounded, size: 24,),
              label: Text('Restart Quiz!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
