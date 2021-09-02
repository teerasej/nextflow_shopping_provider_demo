import 'package:flutter/material.dart';

import 'package:badges/badges.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  int _itemCount = 3;

  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(top: 5, end: 5),
      badgeContent: Text(
        '$_itemCount',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      child: IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
    );
  }
}
