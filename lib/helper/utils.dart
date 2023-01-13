import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/helper/constants.dart';

getTotalWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

getTotalHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//Reusable App Bar widget
getHomeScreenAppbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications),
      ),
    ],
    centerTitle: true,
    toolbarHeight: 80,
    elevation: 0,
    title: Text(appTitle),
    flexibleSpace: Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        height: 250,
        color: Theme.of(context).primaryColor,
      ),
      Container(
        decoration: const BoxDecoration(
            color: Color(0xffffcbd1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
        height: 20,
      )
    ]),
  );
}

// category widget
getCategory(BuildContext context, String catImage, catTitle) {
  return Flexible(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(catImage),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            catTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    ),
  );
}

//get bold text
getBoldText(String text, Color color, double size) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
  );
}

//get vertical spacing
getVerticalSpacing() {
  return SizedBox(height: 10.0);
}
