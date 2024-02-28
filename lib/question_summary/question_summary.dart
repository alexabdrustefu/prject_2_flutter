import 'package:flutter/material.dart';
import 'package:prject_2/question_summary/question_summary_items.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    //wrap in sizedBox la column
    return SizedBox(
      //attribuisco un altezza fissa
      height: 400,
      //rendo scrollabile le risposte in quanto 300 px non riesce a contenerle
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
