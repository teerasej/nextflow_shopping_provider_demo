import 'package:flutter/material.dart';
import 'package:nextflow_shopping_provider_demo/controllers/cart_notifier.dart';
import 'package:nextflow_shopping_provider_demo/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);

  final List<ProductModel> products = [
    ProductModel('iPhone 12', price: 24000, id: 1),
    ProductModel('Air Tag', price: 3200, id: 2),
    ProductModel('AirPod Pro', price: 7900, id: 3),
    ProductModel('AirPod Case', price: 1200, id: 4),
    ProductModel('Macbook Pro M1', price: 59900, id: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        var product = products[index];
        return ListTile(
          title: Text(product.name),
          subtitle: Text('${product.price} บาท'),
          onTap: () {
            context.read<CartNotifier>().addProductToCart(product);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
