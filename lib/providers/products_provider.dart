import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
part 'products_provider.g.dart';

//Get all products
@riverpod
List<Product> products(ref) {
  return allProducts;
}

//Get products with price less than 50
@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((product) => product.price < 50).toList();
}
