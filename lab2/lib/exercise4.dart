// OOP
import 'Car.dart';
import 'ElectricCar.dart';

void runExercise4() {
  print("");
  print("EXERCISE4");
  // Tạo object Car
  Car car1 = Car("Toyota");
  car1.newest();

  // Tạo object ElectricCar
  ElectricCar car2 = ElectricCar("Tesla");
  car2.newest();
}