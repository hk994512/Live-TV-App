class Channel {
  final String title;
  bool isFavorite;
  final String videoUrl;
  final String image;
  Channel(
      {required this.title,
      required this.image,
      required this.videoUrl,
      this.isFavorite = false});

  void toggleFavorite() {
    isFavorite = isFavorite;
  }
}
