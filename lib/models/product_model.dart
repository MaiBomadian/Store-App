class ProductModel {
  final num id;
  final String title;
  final String price;
  final String description;
  final String image;
  final String category;
  final RatingModel rate;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
  });
  factory ProductModel.fromJson(jsonData) {
    if (jsonData == null) {
      throw FormatException("JSON data is null or invalid");
    }
    return ProductModel(
      id: jsonData['id'] ?? 0,
      title: jsonData['title'] ?? '',
      price: jsonData['price'].toString(),
      description: jsonData['description'] ?? '',
      category: jsonData['category'] ?? '',
      image: jsonData['image'] ?? '',
      rate: RatingModel.fromJson(jsonData['rating'] ??
          {
            'rate': 0.0,
            'count': 0,
          }),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> jsonData) {
    if (jsonData.isEmpty) {
      throw FormatException("Rating JSON data is empty or invalid");
    }
    return RatingModel(
        rate: jsonData['rate']?.toDouble() ?? 0.0,
        count: jsonData['count'] as int? ?? 0);
  }
}
