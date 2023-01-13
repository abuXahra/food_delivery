import 'package:flutter/material.dart';
import 'package:food_delivery/helper/carousel.dart';
import 'package:food_delivery/helper/constants.dart';
import 'package:food_delivery/helper/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getHomeScreenAppbar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              getTopSection(context),

              getVerticalSpacing(),

              //Carousel
              Carousel(),

              getVerticalSpacing(),

              //banner
              Image.asset(
                'images/banner.png',
                width: double.infinity,
              ),
              getVerticalSpacing(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: getBoldText('Explore by Category', Colors.black, 16),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getCatCard(context, "Burger", cat1Img, () {}),
                        getCatCard(context, "Fries", cat2Img, () {})
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getCatCard(context, "Pizza", cat3Img, () {}),
                        getCatCard(context, "Salad", cat4Img, () {})
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                    getBoldText('Popular from Chiggy Wiggy', Colors.black, 16),
              ),
            ],
          ),
        ));
  }

  //top section: categories
  Row getTopSection(BuildContext context) {
    return Row(
      children: [
        getCategory(context, appLogo1, 'Chicken'),
        getCategory(context, appLogo2, 'Beef'),
        getCategory(context, appLogo3, 'Pork'),
        getCategory(context, appLogo4, 'Chevron')
      ],
    );
  }

  Column getCatCard(BuildContext context, String title, String imgUrl,
      VoidCallback voidCallback) {
    return Column(
      children: [
        Container(
          width: getTotalWidth(context) / 2.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imgUrl),
          ),
        ),
        getBoldText(title, Colors.black, 16)
      ],
    );
  }
}
