import 'package:flutter/material.dart';
import 'package:food_delivery/helper/utils.dart';

class ProductList extends StatefulWidget {
  String title;
  ProductList({super.key, required this.title});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: getBoldText(widget.title, Colors.black, 16),
        ),
        body: Container());
  }
}
