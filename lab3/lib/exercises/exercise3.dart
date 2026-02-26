import 'dart:async';

void exercise3() {
  print("");
  print("EXERCISE 3");
  print("Start");

  scheduleMicrotask(() {
    print("Microtask");
  });

  Future(() {
    print("Event queue");
  });

  print("End");
}