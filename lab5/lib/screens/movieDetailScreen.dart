import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeroBanner(),
            _buildContent(),
          ],
        ),
      ),
    );
  }
// banner
  Widget _buildHeroBanner() {
    return Stack(
      children: [
        Image.asset(
          movie.posterUrl,
          height: 250,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black54, Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
// thong tin chi tiet
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 8),
          _buildGenres(),
          const SizedBox(height: 16),
          _buildOverview(),
          const SizedBox(height: 16),
          _buildActionButtons(),
          const SizedBox(height: 24),
          _buildTrailerSection(),
        ],
      ),
    );
  }
// title
  Widget _buildTitle() {
    return Text(
      movie.title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
// the loai
  Widget _buildGenres() {
    return Wrap(
      spacing: 8,
      children: movie.genres
          .map((genre) => Chip(label: Text(genre)))
          .toList(),
    );
  }
// overview
  Widget _buildOverview() {
    return Text(movie.overview);
  }
// nut
  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Column(
          children: [
            Icon(Icons.favorite_border),
            SizedBox(height: 4),
            Text("Favorite"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.star_border),
            SizedBox(height: 4),
            Text("Rate"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share),
            SizedBox(height: 4),
            Text("Share"),
          ],
        ),
      ],
    );
  }
// trailer
  Widget _buildTrailerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Trailers",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...movie.trailers.map(
              (trailer) => ListTile(
            leading: const Icon(Icons.play_circle_fill),
            title: Text(trailer),
          ),
        ),
      ],
    );
  }
}