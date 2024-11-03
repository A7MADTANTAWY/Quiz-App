import 'package:quiz/data/Question-data.dart';
import 'package:quiz/data/selected_ansers.dart';

List<Map<String, Object>> getSummaryData() {
  final List<Map<String, Object>> summary = [];

  for (int i = 0; i < selected.length; i++) {
    summary.add({
      'question-index': (i + 1),
      'question': questions[i].text, // Get question text
      'correct-answer': questions[i].answers[0], // Get correct answer
      'user-answer': selected[i],
    });
  }
  return summary;
}
