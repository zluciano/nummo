import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  Header({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42 * heightScale,
        ),
        Container(
          height: 66.31 * heightScale,
          width: 64.69 * widthScale,
          child: Image.asset("assets/images/app_icon.png"),
        ),
        Container(
          height: 25.69 * heightScale,
        ),
        Container(
          height: 51 * heightScale,
          width: 207 * widthScale,
          child: Image.asset("assets/images/app_name.png"),
        ),
        Container(
          height: 32 * heightScale,
        ),
      ],
    );
  }

}
