// import 'dart:js_util';

import 'dart:async';

void main(List<String> args) async {
  // final stream =
  //     Stream<int>.periodic(const Duration(milliseconds: 1), (i) => i).take(60);
  // stream.forEach(print);

  Asker newquestion = Asker();
  newquestion.ask(question: questions).listen(print);
  // final newstream = tick(ticks: 60).listen(print);
  // Timer(Duration(seconds: 5), (() => newstream.pause()));
  // Timer(Duration(seconds: 10), (() => newstream.resume()));

  // newstream.forEach(print);
}

Stream<int> tick({required int ticks}) {
  return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
      .take(ticks);
}

class Asker {
  const Asker();

  Stream<Question> ask({required List<Question> question}) {
    return Stream.periodic(const Duration(seconds: 1),
        (x) => question[question.length - x - 1]).take(question.length);
  }
}

List<Question> questions = <Question>[
  Question(
      question: "What is the capital of France?",
      options: ["Paris", "Bordeaux", "Nice", "Lyon"],
      correctanswer: 2),
  Question(
      question: "What is the capital of France?",
      options: ["Paris", "Bordeaux", "Nice", "Lyon"],
      correctanswer: 2),
  Question(
      question: "What is the capital of France?",
      options: ["Paris", "Bordeaux", "Nice", "Lyon"],
      correctanswer: 2),
];

class Question {
  final String question;
  final List<String> options;
  final int correctanswer;

  Question({
    required this.question,
    required this.options,
    required this.correctanswer,
  });

  @override
  String toString() {
    return '{Question :$question \n :$options}';
  }
}
