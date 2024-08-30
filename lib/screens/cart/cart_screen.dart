import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: cartProducts.map(
                (product) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          width: 56,
                          height: 56,
                          product.image,
                        ),
                        const SizedBox(width: 12.0),
                        Text(product.title),
                        const Spacer(),
                        Text(product.price.toString()),
                      ],
                    ),
                  );
                },
              ).toList(), // output cart products here
            ),

            // output totals here
          ],
        ),
      ),
    );
  }
}
