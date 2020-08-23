import 'package:flutter/material.dart';

import 'colors.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.37,
      width: size.width,
      color: bgColor,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -40,
              left: size.width / 9,
              child: Image.asset(
                'assets/dummy1.png',
                scale: 0.65,
              )),

          Positioned(
            top: 0,
            left: size.width / 2 + 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Image.asset(
                  'assets/box.png',
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: buttonColor,
                        spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: Offset(0, 1.5))
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 130,
            left: size.width / 2 + 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Image.asset(
                  'assets/dummy2.png',
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: buttonColor,
                        spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: Offset(0, 1.5))
                  ],
                ),
              ),
            ),
          )

          // Image.asset('assets/dummy2.png')
        ],
      ),
    );
  }
}
