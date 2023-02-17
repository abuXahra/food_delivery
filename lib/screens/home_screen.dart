import 'package:flutter/material.dart';
import 'package:food_delivery/helper/carousel.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/helper/constants.dart';
import 'package:food_delivery/helper/utils.dart';
import 'package:food_delivery/screens/product_list.dart';

import '../admin/screens/admin_home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getHomeScreenAppbar(context),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                  ),
                  height: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: getNormalText('Hello there', Colors.white, 18),
                  ),
                ),
              ),
              //Divider(),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey),
                title: getNormalText('Home', Colors.black, 16),
                    onTap: (){
                  Navigator.pop(context);
                    },
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey),
                title: getNormalText('Admin', Colors.black, 16),
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminHomePage()));
                },
              )
            ],
          ),
        ),
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

              //inform of Gridview
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
                        getCatCard(context, "Burger", cat1Img, () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductList(title: 'Burger')));
                        }),
                        getCatCard(context, "Fries", cat2Img, () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductList(title: 'Fries')));
                        })
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getCatCard(context, "Pizza", cat3Img, () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductList(title: 'Pizzs')));
                        }),
                        getCatCard(context, "Salad", cat4Img, () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductList(title: 'Salad')));
                        })
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
        getCategory(context, appLogo1, 'Chicken', () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductList(title: 'Chicken')));
        }),
        getCategory(context, appLogo2, 'Beef', () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductList(title: 'Beef')));
        }),
        getCategory(context, appLogo3, 'Pork', () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductList(title: 'Pork')));
        }),
        getCategory(context, appLogo4, 'Chevron', () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductList(title: 'Chevron')));
        })
      ],
    );
  }

  Column getCatCard(BuildContext context, String title, String imgUrl,
      VoidCallback voidCallback) {
    return Column(
      children: [
        GestureDetector(
          onTap: voidCallback,
          child: Container(
            width: getTotalWidth(context) / 2.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imgUrl),
            ),
          ),
        ),
        getBoldText(title, Colors.black, 16)
      ],
    );
  }
}
