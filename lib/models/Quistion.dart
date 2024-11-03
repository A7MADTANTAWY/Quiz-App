class Question {
  final String text;
  final List<String> answers;

  Question({required this.text, required this.answers});

  // ignore: non_constant_identifier_names
  List<String> GetShuffledList() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
