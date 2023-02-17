import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/helper/constants.dart';
import 'package:food_delivery/helper/utils.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/screens/product_detail.dart';

class ProductList extends StatefulWidget {
  String title;
  //String imgUrl;
  ProductList({super.key, required this.title});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  List<ProductModel> products = [
    ProductModel(
        name: 'Pizza',
        description:
            'Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices Get the finest Pizza available in the market with the lowest prices',
        price: '100',
        shortDescription: 'Best Pizza in the world',
        weight: '500',
        imgUrl: pizza,
        category: 'Pizza'),
    ProductModel(
        name: 'Burger',
        description:
            'Get the finest Burger available in the market with the lowest prices',
        price: '100',
        shortDescription: 'Best Burger in the world',
        weight: '500',
        imgUrl: pizza,
        category: 'Pizza'),
    ProductModel(
        name: 'Fries',
        description:
            'Get the finest Fries available in the market with the lowest prices',
        price: '100',
        shortDescription: 'Best Fries in the world',
        weight: '500',
        imgUrl: pizza,
        category: 'Pizza')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getOtherScreenAppbar(widget.title, context),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                var product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductDetail(productModel: product)));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getTotalWidth(context),
                          height: getTotalHeight(context) / 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.asset(
                              '${product.imgUrl}',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getBoldText('${product.name}', Colors.black, 18),
                              // const SizedBox(height: 15),
                              getVerticalSpacing(),
                              getNormalText('${product.shortDescription}',
                                  Colors.black, 16),
                              getVerticalSpacing(),
                              getNormalText(
                                  '${product.weight} gms', Colors.grey, 16),
                              getVerticalSpacing(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  getBoldText(
                                      'N ${product.price}', Colors.black, 20),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: MyColors.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: getNormalText(
                                          'ADD +', Colors.white, 16))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
