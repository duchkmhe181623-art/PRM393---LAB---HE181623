import 'package:flutter/material.dart';
import '../data/sampleData.dart';
import '../screens/movieDetailScreen.dart';
import '../models/movie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTitle(),
            const SizedBox(height: 16),
            _buildMovieList(context),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(title: const Text("Movies"));
  }
// title
  Widget _buildTitle() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Movies",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
// list movie
  Widget _buildMovieList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return _buildMovieCard(context, movies[index]);
        },
      ),
    );
  }
// thong tin phim
  Widget _buildMovieCard(BuildContext context, Movie movie) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            movie.posterUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(movie.title),
        subtitle: Text("⭐ ${movie.rating} • ${movie.genres.join(", ")}"),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MovieDetailScreen(movie: movie),
            ),
          );
        },
      ),
    );
  }
}