import 'models/category.dart';

class Product {
  final Category category;

  final int id;
  final String title;
  final String description;
  final num? originalBasePrice;
  final num basePrice;
  final String imageUrl;

  Product(
    this.id,
    this.title,
    this.description,
    this.originalBasePrice,
    this.basePrice,
    this.imageUrl,
    this.category,
  );
}
