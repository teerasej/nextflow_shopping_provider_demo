import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nextflow_shopping_provider_demo/models/product_model.dart';

class CartNotifier extends ChangeNotifier {
  List<ProductModel> _shoppingCart = [];

  UnmodifiableListView<ProductModel> get shoppingCart =>
      UnmodifiableListView(_shoppingCart);

  addProductToCart(ProductModel product) {
    _shoppingCart.add(product);
    notifyListeners();
  }
}
