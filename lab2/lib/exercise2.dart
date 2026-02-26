// Exercise 2: Collections & Operators

void runExercise2() {
  print("");
  print("EXERCISE2");
  // List
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(5);
  numbers.remove(2);

  print("List: $numbers");
  print("First element: ${numbers[0]}");

  // Arithmetic operators
  int a = 10;
  int b = 5;
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a == b: ${a == b}");

  // Logical operator
  bool result = (a > b) && (b > 0);
  print("Logical result: $result");

  // Ternary operator
  String status = a > b ? "A lớn hơn B" : "B lớn hơn A";
  print(status);

  // Set (không trùng lặp)
  Set<int> uniqueNumbers = {1, 2, 2, 3};
  print("Set: $uniqueNumbers");

  // Map (key-value)
  Map<String, String> student = {
    "name": "Duc",
    "major": "IT"
  };

  print("Student name: ${student["name"]}");
}