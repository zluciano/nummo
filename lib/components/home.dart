import 'package:flutter/material.dart';
import 'package:nummo/util/bottomButtons.dart';
import 'package:nummo/main.dart';
import 'package:nummo/util/header.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    final List<String> images = [
      "assets/images/credit.png",
      "assets/images/loan.png",
      "assets/images/credit_text.png",
      "assets/images/loan_text.png",
      "assets/images/account.png",
      "assets/images/exit.png",
      "assets/images/account_text.png",
      "assets/images/exit_text.png",
    ];
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
                        Header(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        ),
                        Container(
                            height: 343 * heightScale,
                            width: 332 * widthScale,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 42 * heightScale,
                                  width: 332 * widthScale,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),
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
                                  child: Center(
                                    child: Text("Username", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 5 * heightScale,
                                ),
                                Container(
                                  height: 296 * heightScale,
                                  width: 332 * widthScale,
                                  padding: EdgeInsets.only(left: 32.31 * widthScale, right: 32.31),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
                                    border: Border.all(color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 15 * heightScale,
                                          spreadRadius: -10 * widthScale,
                                          offset: Offset(0, 5 * heightScale)
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(height: 20 * heightScale,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(images[0], height: 87*heightScale, width: 87*widthScale,),
                                                  FlatButton(
                                                      height: 87 * heightScale,
                                                      minWidth: 87 * widthScale,
                                                      onPressed: () => user['investor'] ? Navigator.pushNamed(context, '/investorPage')
                                                                                        : Navigator.pushNamed(context, '/notInvestorPage'),
                                                      child: null
                                                  )
                                                ],
                                              ),
                                              Image.asset(images[2], height: 50*heightScale, width: 80*widthScale,),
                                            ],
                                          ),
                                          Container(width: 67 * widthScale,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(images[1], height: 87*heightScale, width: 87*widthScale,),
                                                  FlatButton(
                                                      height: 87 * heightScale,
                                                      minWidth: 87 * widthScale,
                                                      onPressed: (){print("pressed");},
                                                      child: null
                                                  )
                                                ],
                                              ),
                                              Image.asset(images[3], height: 50*heightScale, width: 80*widthScale,),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(images[4], height: 87*heightScale, width: 87*widthScale,),
                                                  FlatButton(
                                                      height: 87 * heightScale,
                                                      minWidth: 87 * widthScale,
                                                      onPressed: (){print("pressed");},
                                                      child: null
                                                  )
                                                ],
                                              ),
                                              Image.asset(images[6], height: 10*heightScale, width: 80*widthScale,),
                                            ],
                                          ),
                                          Container(width: 67 * widthScale,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(images[5], height: 87*heightScale, width: 87*widthScale,),
                                                  FlatButton(
                                                      height: 87 * heightScale,
                                                      minWidth: 87 * widthScale,
                                                      onPressed: (){print("pressed");},
                                                      child: null
                                                  )
                                                ],
                                              ),
                                              Image.asset(images[7], height: 11*heightScale, width: 80*widthScale,),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            )
                        ),
                        Container(
                          height: 59 * heightScale,
                        ),
                        BottomButtons(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
