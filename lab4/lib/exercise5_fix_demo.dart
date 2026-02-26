import 'package:flutter/material.dart';

class FixDemo extends StatelessWidget {
  const FixDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(),
            const SizedBox(height: 16),
            _buildMovieList(), // ✅ FIX using Expanded
          ],
        ),
      ),
    );
  }

  // ---------------------------
  // APP BAR
  // ---------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text("Exercise 5 – Common UI Errors"),
    );
  }

  // ---------------------------
  // TITLE
  // ---------------------------
  Widget _buildTitle() {
    return const Text(
      "Correct ListView inside Column using Expanded",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // ---------------------------
  // MOVIE LIST (FIXED)
  // ---------------------------
  Widget _buildMovieList() {
    return Expanded( // phan sua
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.movie),
            title: Text("Movie A"),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text("Movie B"),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text("Movie C"),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text("Movie D"),
          ),
        ],
      ),
    );
  }
}