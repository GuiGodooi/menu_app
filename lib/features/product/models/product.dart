import 'package:flutter/cupertino.dart';
import 'package:flutter_menu/features/product/models/modifier.dart';

import 'models/category.dart';

class Product {
  //import Category
  final Category? category;

  final int id;
  final String title;
  final String description;
  final num? originalBasePrice;
  final num basePrice;
  final String imageUrl;
  final List<Modifier> modifiers;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.originalBasePrice,
    required this.basePrice,
    required this.imageUrl,
    required this.category,
    required this.modifiers,
  });

  //mapeando o json de Product com try catch
  static Product? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    try {
      //criando uma variável para guardar attributes (attr) e facilitar a chamada
      final attr = json['attributes'];
      return Product(
        id: json['id'],
        //usando a variável attr;
        title: attr['title'],
        description: attr['description'],
        originalBasePrice: attr['originalBasePrice'],
        basePrice: attr['basePrice'],
        imageUrl: attr['image']['data']['attributes']['url'],
        category: Category.fromJson(attr['data']),
        modifiers: attr['options']
            .map((modifier) => Modifier.fromJson(modifier))
            .toList(),
      );
    } catch (e) {
      //caso encontrar algum erro, mostrar do debug;
      debugPrint('$e');
      return null;
    }
  }
}
