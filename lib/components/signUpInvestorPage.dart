import 'package:flutter/material.dart';
import 'package:nummo/util/login.dart';
import 'package:imagebutton/imagebutton.dart';

class SignUpInvestorPage extends StatefulWidget {
  SignUpInvestorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpInvestorPageState createState() => _SignUpInvestorPageState();
}

class _SignUpInvestorPageState extends State<SignUpInvestorPage> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    return Scaffold(
      body: Center(
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
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 62 * heightScale,
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
                        SignUpInvestor(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 349 * widthScale, top: 35 * heightScale),
                  child: ImageButton(
                    children: <Widget>[],
                    width: 40.0 * widthScale,
                    height: 40.0 * heightScale,
                    pressedImage: Image.asset(
                      "assets/images/back.png",
                    ),
                    unpressedImage: Image.asset("assets/images/back.png"),
                    onTap: () => Navigator.pushNamed(context, '/signUpPage'),
                  )
              )
            ],
          )
      ),
    );
  }
}
