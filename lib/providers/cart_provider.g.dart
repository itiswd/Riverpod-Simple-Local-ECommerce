// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalCartPriceHash() => r'6896f0ec9b98d33a8c71a71a9674066ce9f728e2';

/// See also [totalCartPrice].
@ProviderFor(totalCartPrice)
final totalCartPriceProvider = AutoDisposeProvider<int>.internal(
  totalCartPrice,
  name: r'totalCartPriceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$totalCartPriceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalCartPriceRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'761aef464bd73b9196dc16a4e4983e8d84ef1fb9';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
