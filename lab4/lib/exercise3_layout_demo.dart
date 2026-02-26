import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  // ---------------------------
  // DATA SOURCE
  // ---------------------------
  final List<String> _movies = const [
    "Avatar",
    "Inception",
    "Interstellar",
    "Joker",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 3 – Layout Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 16),
            _buildMovieList(),
          ],
        ),
      ),
    );
  }

  // ---------------------------
  // HEADER SECTION
  // ---------------------------
  Widget _buildHeader() {
    return const Text(
      "Now Playing",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // ---------------------------
  // MOVIE LIST (IMPORTANT)
  // ---------------------------
  Widget _buildMovieList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          return _buildMovieItem(_movies[index]);
        },
      ),
    );
  }

  // ---------------------------
  // SINGLE MOVIE ITEM
  // ---------------------------
  Widget _buildMovieItem(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Text(title[0]), // Lấy chữ cái đầu
          ),
          title: Text(title),
          subtitle: const Text("Sample description"),
        ),
      ),
    );
  }
}