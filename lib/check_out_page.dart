import 'package:flutter/material.dart';
import 'package:nextflow_shopping_provider_demo/controllers/cart_notifier.dart';
import 'package:nextflow_shopping_provider_demo/models/product_in_cart_model.dart';
import 'package:nextflow_shopping_provider_demo/models/product_model.dart';

import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductInCartModel> productsInCart =
        context.read<CartNotifier>().checkoutSummary;
    double total = context.read<CartNotifier>().total;

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: ListView.builder(
        itemCount: productsInCart.length,
        itemBuilder: (BuildContext context, int index) {
          var productInCart = productsInCart[index];

          return ListTile(
            title: Text(productInCart.product.name),
            subtitle: Text('${productInCart.product.price} บาท'),
            trailing: Text('x ${productInCart.count}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'รวม $total บาท',
                style: TextStyle(fontSize: 45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
