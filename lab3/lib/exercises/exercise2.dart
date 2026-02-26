import 'dart:convert';
import '../models/User.dart';

Future<List<User>> fetchUsers() async {
  // Giả lập API trả về JSON string
  String jsonString = '''
  [
    {"name": "Duc", "email": "duc@example.com"},
    {"name": "An", "email": "an@example.com"}
  ]
  ''';

  await Future.delayed(Duration(seconds: 1)); // giả lập delay network

  List<dynamic> jsonList = jsonDecode(jsonString);

  return jsonList.map((json) => User.fromJson(json)).toList();
}

Future<void> exercise2() async {
  print("");
  print("EXERCISE 2");

  List<User> users = await fetchUsers();

  for (var user in users) {
    print("Name: ${user.name} - Email: ${user.email}");
  }
}