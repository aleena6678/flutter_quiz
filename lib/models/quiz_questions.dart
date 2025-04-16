class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // List.of() creates a new list.
    shuffledList.shuffle(); // .shuffle() shuffles it.
    return shuffledList;
  }
}