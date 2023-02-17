import 'package:flutter/material.dart';

import '../../helper/colors.dart';
import '../../helper/constants.dart';
import '../../helper/utils.dart';
import '../../models/product_model.dart';
import '../../screens/product_detail.dart';




class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: const Icon(Icons.add),
      ),

      appBar:  getOtherScreenAppbar('Products', context),
      body: Container(),
    );
  }
}
