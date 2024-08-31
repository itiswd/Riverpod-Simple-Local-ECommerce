import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

class CartProvider extends Notifier<Set<Product>> {
  @override
  Set<Product> build() {
    return {
      const Product(
        id: '1',
        title: 'Groovy Shorts',
        price: 12,
        image: 'assets/products/shorts.png',
      ),
    };
  }
}

final cardNotifierProvider = NotifierProvider<CartProvider, Set<Product>>(() {
  return CartProvider();
});
