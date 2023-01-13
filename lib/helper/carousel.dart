import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/helper/constants.dart';

List<String> imgList = [slide1, slide2, slide3, slide4];

// List<String> imgList = [
// 'images/chips.jpg',
// 'images/coconutrice.jpg',
// 'images/egusi.jpg',
// 'images/fisherman.jpg',
// ];

final List<Widget> imgSliders = imgList.map((e) => Container(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
        e,
        fit: BoxFit.cover,
      width: double.infinity,
    ),),
)).toList();

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
              items: imgSliders,
              options: CarouselOptions(
             //   viewportFraction: 0.95,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio:  2.5,
                onPageChanged: (index, reason){
                  setState(() {
                    _currentIndex = index;
                  });
                }
              ),
          ),
          //coursel dots

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((e){
              int index = imgList.indexOf(e);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ?
                      const Color.fromRGBO(0, 0, 0, 0.9):
                  Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          )

        ],
      ),
    );
  }
}
