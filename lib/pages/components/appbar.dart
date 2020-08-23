import 'package:flutter/material.dart';

import 'colors.dart';

AppBar buildAppBar() {
  return new AppBar(
    backgroundColor: bgColor,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: buttonColor,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      Stack(
        children: <Widget>[
          Image.asset(
            'assets/shop.png',
            height: 100,
            width: 49,
            scale: 0.4,
          ),
          Positioned(
            top: 10,
            left: 16,
            child: Image.asset(
              'assets/not.png',
            ),
          )
        ],
      )
    ],
  );
}
