import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget{
  BottomButtons({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91 * heightScale,
      width: 294 * widthScale,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 15 * heightScale,
                spreadRadius: -10 * widthScale,
                offset: Offset(0, 5 * heightScale)
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/version.png", height: 34 * heightScale, width: 52 * widthScale,),
              Image.asset("assets/images/version_text.png", height: 25 * heightScale, width: 40 * widthScale,),
            ],
          ),
          Container(
            width: 50 * widthScale,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/settings.png", height: 34 * heightScale, width: 52 * widthScale,),
              Image.asset("assets/images/settings_text.png", height: 28 * heightScale, width: 65 * widthScale,),
            ],
          ),
        ],
      ),
    );
  }
}