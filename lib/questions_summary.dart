import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((result) {
            return Row(children: [
              Text(
                ((result['question_index'] as int) + 1).toString(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Padding(
                    //   padding: EdgeInsets.only(left: 10),
                    // ),
                    Text(
                      result['question'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      result['user_answer'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.cyanAccent,
                      ),
                    ),
                    Text(
                      result['correct_answer'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.limeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
