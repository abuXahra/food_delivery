import 'package:flutter/material.dart';
import 'package:food_delivery/helper/utils.dart';
import 'package:food_delivery/models/product_model.dart';

import '../helper/colors.dart';
import '../helper/constants.dart';

class ProductDetail extends StatefulWidget {
  ProductModel productModel;

  ProductDetail({super.key, required this.productModel});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {



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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: getBoldText(
                    '${widget.productModel.name}', Colors.white, 18),
                background: Image.asset(
                  '${widget.productModel.imgUrl}',
                  fit: BoxFit.fill,
                ),
                centerTitle: true,
              ),
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                )
              ],
              expandedHeight: getTotalHeight(context) /2 ), // they used /3
          SliverList(
              delegate: SliverChildListDelegate([
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 getVerticalSpacing(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                         width: 70,
                         padding: const EdgeInsets.symmetric(
                             vertical: 5.0, horizontal: 10),
                         decoration: BoxDecoration(
                             color: MyColors.primaryColor,
                             borderRadius:
                             BorderRadius.circular(10)),
                         child: getNormalText(
                             'ADD +', Colors.white, 16)),
                     SizedBox(width: 20,)
                   ],
                 ),
                 SizedBox(height: 12),
                 const Divider(height: 5),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       getBoldText(
                           'Price: N ${widget.productModel.price}', Colors.black, 18),
                       getNormalText(
                           '${widget.productModel.weight} gm', Colors.black, 18)
                     ],
                   ),
                 ),
                 const Divider(height: 5,),
                 SizedBox(height: 12),
                 getNormalText('${widget.productModel.description}', Colors.black, 16),
                 getVerticalSpacing(),
                 const Divider(),

                 ListView.builder(
                   itemCount: products.length,
                     itemBuilder: (BuildContext context, int index){
                     var product= products[index];
                     return getProductCard(product);
                     }
                 )
               ],
             ),
           )
          ]))
        ],
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        width: getTotalWidth(context),
        height: 50,
        color: Colors.red,
        child: getBoldText('Go To Cart', Colors.white, 16),
      ),
    );
  }

  getProductCard(ProductModel productModel){
    return Container(
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset('${productModel.imgUrl}'),
          )
        ],
      ),
    );
  }
}
