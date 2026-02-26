import 'dart:async';

Future<void> exercise4() async {
  print("");
  print("EXERCISE 4");
  Stream<int> numberStream =
  Stream.fromIterable([1, 2, 3, 4, 5]);

  numberStream
      .map((number) => number * number)   // bình phương
      .where((number) => number % 2 == 0) // lọc số chẵn
      .listen((number) {
    print("Transformed value: $number");
  });
}