// Exercise 1: Basic Syntax & Data Types

void runExercise1() {
  print("");
  print("EXERCISE1");
  // Khai báo biến với các kiểu dữ liệu cơ bản
  int age = 22;
  double height = 1.7;
  String name = "Hoang Khac Minh Duc";
  bool isStudent = true;

  // In ra màn hình với string interpolation
  print("Name: $name");
  print("Age: $age");
  print("Height: $height m");
  print("Is Student: $isStudent");

  // Biểu thức trong interpolation
  print("Next year age: ${age + 1}");
}