//import 'package:dukaaan/controlls/product_controller.dart';
import 'package:dukaaan/data/d_products_model.dart';
import 'package:dukaaan/model/3d_products_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DProductNotifier extends StateNotifier<List<DProductsmodel>> {
  DProductNotifier() : super(dproductItems);
}

// ignore: non_constant_identifier_names
final d_ProductNotifierprovider =
    StateNotifierProvider<DProductNotifier, List<DProductsmodel>>((ref) {
  return DProductNotifier();
});
