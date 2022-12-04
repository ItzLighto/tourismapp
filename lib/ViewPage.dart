// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tourismapp/conatiners.dart';

class ViewPage extends StatelessWidget {
  final List placetitle = ['Hotels', 'Restaurants', 'Sites'];
  final List placeimage = [
    'assets/Images/hotel.jpg',
    'assets/Images/restaurants.jpg',
    'assets/Images/Women.jpg',
  ];
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: Container(
            child: Column(children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey.shade200,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/Images/Women.jpg'),
                      )),
                ),
                SizedBox(
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('T-Guide',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 30,
                      )),
                ),
              ]),
              SizedBox(
                height: 60,
              ),
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 120, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Colors.white30),
                      ),
                      // color: Colors.white.withOpacity(0.3),
                      child: Text(
                        'Explore the world '
                        'With US...',
                        style: TextStyle(
                          //backgroundColor: Colors.cyan,
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 255),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: placetitle.length,
                    itemBuilder: (context, index) {
                      return Conatiners(
                        child: placetitle[index],
                        imageUrl: placeimage[index],
                      );
                    }),
              )
            ]),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Images/HomeScreen.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ]),
    );
  }
}
