import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 1 – Core Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeadline(),
            const SizedBox(height: 16),
            _buildIcon(),
            const SizedBox(height: 16),
            _buildImage(),
            const SizedBox(height: 16),
            _buildCard(),
          ],
        ),
      ),
    );
  }

  // ---------------------------
  // Headline
  // ---------------------------
  Widget _buildHeadline() {
    return const Text(
      "Welcome to Flutter UI",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // ---------------------------
  // Icon
  // ---------------------------
  Widget _buildIcon() {
    return const Center(
      child: Icon(
        Icons.movie,
        size: 60,
        color: Colors.blue,
      ),
    );
  }

  // ---------------------------
  // Image
  // ---------------------------
  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        "https://picsum.photos/400/200",
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  // ---------------------------
  // Card + ListTile
  // ---------------------------
  Widget _buildCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const ListTile(
        leading: Icon(Icons.star),
        title: Text("Movie Item"),
        subtitle: Text("This is a sample ListTile inside a Card."),
      ),
    );
  }
}