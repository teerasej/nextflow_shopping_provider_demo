import 'package:flutter/material.dart';
import 'package:nextflow_shopping_provider_demo/components/checkout_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nextflow Shopping'),
        actions: [
          CheckoutButton(),
        ],
      ),
    );
  }
}
