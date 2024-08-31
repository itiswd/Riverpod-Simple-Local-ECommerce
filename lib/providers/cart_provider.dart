import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
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
