import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  Loading({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery. of(context). size. width,
                height: MediaQuery. of(context). size. height,
                color: Colors.white,
                //child: Image.asset("assets/images/main_back.png", fit: BoxFit.fill,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                    ],
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}
