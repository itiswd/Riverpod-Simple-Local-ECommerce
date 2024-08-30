import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

//Get all products
final productsProvider = Provider<List<Product>>((ref) {
  return allProducts;
});

//Get products with price less than 50
final reducedProductsProvider = Provider<List<Product>>((ref) {
  return allProducts.where((product) => product.price < 50).toList();
});
