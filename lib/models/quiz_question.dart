class QuizQuestion {
  //costruttore
  const QuizQuestion(this.text, this.answer);
  //memorizzo i tipi di dato
  final String text;
  final List<String> answer;
//funzione per mescolaare gli elementi della lista
  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
