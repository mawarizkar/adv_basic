class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(
      answer,
    ); //List.of itu ngeduplikasi ke list yang baru
    shuffledList.shuffle();
    return shuffledList;
  }
}
