import 'package:flutter/material.dart';

class ThemeDemo extends StatefulWidget {
  const ThemeDemo({super.key});

  @override
  State<ThemeDemo> createState() => _ThemeDemoState();
}

class _ThemeDemoState extends State<ThemeDemo> {

  // ---------------------------
  // STATE
  // ---------------------------
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: _buildScaffold(),
    );
  }

  // ---------------------------
  // LIGHT THEME
  // ---------------------------
  ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
      ),
    );
  }

  // ---------------------------
  // DARK THEME
  // ---------------------------
  ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.deepPurple,
      ),
    );
  }

  // ---------------------------
  // MAIN SCAFFOLD
  // ---------------------------
  Widget _buildScaffold() {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFAB(),
    );
  }

  // ---------------------------
  // APP BAR
  // ---------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text("Exercise 4 – App Structure"),
      actions: [
        _buildThemeSwitch(),
      ],
    );
  }

  // ---------------------------
  // DARK MODE SWITCH
  // ---------------------------
  Widget _buildThemeSwitch() {
    return Switch(
      value: _isDarkMode,
      onChanged: (value) {
        setState(() {
          _isDarkMode = value;
        });
      },
    );
  }

  // ---------------------------
  // BODY
  // ---------------------------
  Widget _buildBody() {
    return const Center(
      child: Text(
        "This is a complete screen structure.\nToggle Dark Mode above.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  // ---------------------------
  // FLOATING ACTION BUTTON
  // ---------------------------
  Widget _buildFAB() {
    return FloatingActionButton(
      onPressed: _onFabPressed,
      child: const Icon(Icons.add),
    );
  }

  // ---------------------------
  // FAB LOGIC
  // ---------------------------
  void _onFabPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("FAB Pressed!"),
      ),
    );
  }
}