// Exercise 3: Control Flow & Functions

void runExercise3() {
  print("");
  print("EXERCISE3");
  int score = 85;

  // if-else
  if (score >= 90) {
    print("Grade A");
  } else if (score >= 75) {
    print("Grade B");
  } else {
    print("Grade C");
  }

  // switch case
  String day = "Monday";

  switch (day) {
    case "Monday":
      print("Start of week");
      break;
    case "Friday":
      print("Almost weekend");
      break;
    default:
      print("Normal day");
  }

  // for loop
  for (int i = 0; i < 3; i++) {
    print("For loop: $i");
  }

  // for-in
  List<String> fruits = ["Apple", "Banana", "Orange"];
  for (var fruit in fruits) {
    print("Fruit: $fruit");
  }

  // forEach
  fruits.forEach((fruit) {
    print("forEach: $fruit");
  });

  // Function normal
  int add(int x, int y) {
    return x + y;
  }

  // Arrow function
  int multiply(int x, int y) => x * y;

  print("Add: ${add(2, 3)}");
  print("Multiply: ${multiply(2, 3)}");
}