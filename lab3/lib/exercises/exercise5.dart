class Settings {
  static final Settings _instance = Settings._internal();

  String theme = "Light";

  // Private constructor
  Settings._internal();

  // Factory constructor
  factory Settings() {
    return _instance;
  }
}

void exercise5() {
  print("");
  print("EXERCISE 5");
  var a = Settings();
  var b = Settings();

  print("Are a and b identical? ${identical(a, b)}");
}