//import 'package:flutter_ecommerce/model/product_model.dart';
import 'package:dukaaan/model/3d_products_model.dart';

import '../model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<DProductsmodel> itemBag = [];

class ItemBagNotifier extends StateNotifier<List<DProductsmodel>> {
  ItemBagNotifier() : super(itemBag);

  // Add new item

  void addNewItemBag(DProductsmodel dProductsmodel) {
    state = [...state, dProductsmodel];
  }

  // Remove item

  void removeItem(int pid) {
    state = [
      for (final product in state)
        if (product.Pid != pid) product,
    ];
  }
}

final itemBagProvider =
    StateNotifierProvider<ItemBagNotifier, List<DProductsmodel>>((ref) {
  return ItemBagNotifier();
});

final priceCalcProvider = StateProvider<double>((ref) {
  final itemBag = ref.watch(itemBagProvider);

  double sum = 0;
  for (var element in itemBag) {
    sum += element.price;
  }
  return sum;
});
