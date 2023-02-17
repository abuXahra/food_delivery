import 'package:flutter/material.dart';
import 'package:food_delivery/admin/screens/order_screen.dart';
import 'package:food_delivery/admin/screens/product_screen.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _page = 0;

  List<Widget> pages = [
    ProductScreen(),
    OrderScreen()
  ];

  onPageChange(int page){
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onPageChange,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            label: 'Orders',
              icon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(
              label: 'Products',
              icon: Icon(Icons.onetwothree))
        ],
      ),
    );
  }
}
