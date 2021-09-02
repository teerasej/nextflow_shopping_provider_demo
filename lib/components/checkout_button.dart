import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:nextflow_shopping_provider_demo/controllers/cart_notifier.dart';
import 'package:provider/provider.dart';
import 'package:nextflow_shopping_provider_demo/check_out_page.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(top: 5, end: 5),
      badgeContent: Text(
        '${context.watch<CartNotifier>().shoppingCart.length}',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      child: IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CheckoutPage();
              },
            ),
          );
        },
      ),
    );
  }
}
