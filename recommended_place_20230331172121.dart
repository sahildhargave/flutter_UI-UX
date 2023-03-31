class RecommendedPlace {
  final double rating;
  final String location;
  final String image;

  RecommendedPlace({
    required this.rating,
    required this.location,
    required this.image,
  });
}

List<RecommendedPlace> recommendedPlaces = [
  RecommendedPlace(
    image: "assets/places/place5.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlace(
    image: "assets/places/place4.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlace(
    image: "assets/places/place3.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlace(
    image: "assets/places/place2.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlace(
    image: "assets/places/place1.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
];
