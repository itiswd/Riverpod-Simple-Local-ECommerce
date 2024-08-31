import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/providers/products_provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';
import 'package:riverpod_files/shared/main_button.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.blueGrey.withOpacity(0.05),
        title: const Text(
          'Garage Sale Products',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          CartIcon(),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: allProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.05),
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                Image.asset(
                  width: 64,
                  height: 64,
                  allProducts[index].image,
                ),
                const Spacer(flex: 3),
                Text(
                  allProducts[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$ ${allProducts[index].price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
                if (cartProducts.contains(allProducts[index]))
                  MainButton(
                    text: 'Remove',
                    color: Colors.red,
                    onPressed: () {
                      ref
                          .read(cartNotifierProvider.notifier)
                          .remove(allProducts[index]);
                    },
                  ),
                if (!cartProducts.contains(allProducts[index]))
                  MainButton(
                    text: 'Add',
                    color: Colors.green,
                    onPressed: () {
                      ref
                          .read(cartNotifierProvider.notifier)
                          .add(allProducts[index]);
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
