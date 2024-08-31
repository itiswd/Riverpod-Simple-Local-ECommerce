import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

class CartProvider extends Notifier<Set<Product>> {
  //Initialize value
  @override
  Set<Product> build() {
    return {};
  }

  //Add product
  void add(Product product) {
    state = {...state, product};
  }

  //Remove product
  void remove(Product product) {
    state = {...state}..remove(product);
  }
}

final cardNotifierProvider = NotifierProvider<CartProvider, Set<Product>>(() {
  return CartProvider();
});
