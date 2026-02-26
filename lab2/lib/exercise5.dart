// Exercise 5: Async, Future, Null Safety & Streams

import 'dart:async';

// Hàm async
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data loaded!";
}

void runExercise5() async {
  print("");
  print("EXERCISE5");
  print("Loading...");

  String data = await fetchData();
  print(data);

  // Null safety
  String? name; // có thể null
  print(name ?? "No name provided"); // nếu null thì in giá trị sau ??

  name = "";
  print(name!.toUpperCase()); // ! đảm bảo không null

  // Stream
  Stream<int> numberStream =
  Stream.periodic(Duration(seconds: 1), (count) => count).take(5);

  numberStream.listen((number) {
    print("Stream value: $number");
  });
}