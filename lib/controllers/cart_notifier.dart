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

  List<ProductInCartModel> get checkoutSummary {
    List<ProductInCartModel> result = [];

    for (var product in _shoppingCart) {
      if (result.length >= 0) {
        var productExistInSummary = false;

        for (var productTotal in result) {
          if (productTotal.product.name == product.name) {
            productTotal.count += 1;
            productExistInSummary = true;
            break;
          }
        }

        if (!productExistInSummary) {
          result.add(ProductInCartModel(product));
        }
      }
    }

    return result;
  }

}
