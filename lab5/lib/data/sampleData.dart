import '../models/movie.dart';

final List<Movie> movies = [
  Movie(
    id: "1",
    title: "Dune: Part Two",
    posterUrl: "assets/images/dune_part_two.jpg",
    rating: 8.6,
    genres: ["Sci-Fi", "Adventure", "Drama"],
    overview:
    "Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.",
    trailers: [
      "Official Trailer #1",
      "IMAX Sneak Peek",
    ],
  ),
  Movie(
    id: "2",
    title: "Deadpool & Wolverine",
    posterUrl: "assets/images/deadpool_wolverine.jpg",
    rating: 8.3,
    genres: ["Action", "Comedy"],
    overview:
    "The multiverse gets messy when Wade Wilson teams up with Wolverine for a not-so-family-friendly mission.",
    trailers: [
      "Red Band Trailer",
      "Behind the Scenes",
    ],
  ),
  Movie(
    id: "3",
    title: "Captain America",
    posterUrl: "assets/images/captain_america.webp",
    rating: 9.5,
    genres: ["Action", "Adventure"],
    overview:
    "The multiverse gets messy when Wade Wilson teams up with Wolverine for a not-so-family-friendly mission.",
    trailers: [
      "Captain Trailer",
      "Behind the Scenes",
    ],
  ),
];