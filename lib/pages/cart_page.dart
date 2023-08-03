import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: MyTheme.creamColor,
    );
  }
}
