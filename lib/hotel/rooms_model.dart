class RoomListingModel {
  String title;
  String description;
  String price;
  bool isPremium;
  final Rating rating;
  String image;

  RoomListingModel({
    required this.title,
    required this.rating,
    required this.description,
    required this.price,
    required this.image,
    required this.isPremium,
  });
}

class Rating {
  final double stars;

  Rating({required this.stars});
}
