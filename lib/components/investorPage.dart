import 'package:flutter/material.dart';
import 'package:nummo/util/bottomButtons.dart';
import 'package:nummo/util/buttons.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';
import 'package:nummo/main.dart';

class InvestorPage extends StatefulWidget {
  InvestorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InvestorPageState createState() => _InvestorPageState();
}

class _InvestorPageState extends State<InvestorPage> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    int ba = user['balance'];
    var balance = "";
    if(ba >= 1000){
      balance += (ba/1000).toStringAsFixed(0) + ',' + (ba%1000).toString();
    }
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
                            height: 422 * heightScale,
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
                                    child: Text("Investimentos", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 5 * heightScale,
                                ),
                                Container(
                                    height: 375 * heightScale,
                                    width: 332 * widthScale,
                                    padding: EdgeInsets.only(left: 0 * widthScale, right: 0),
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
                                        Container(
                                          height: 21 * heightScale,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Text('\$ '+balance, style: TextStyle(fontSize: 50 * widthScale, color: Color.fromARGB(0xff, 0x48, 0x91, 0xff)),),
                                                Image.asset("assets/images/balance_text.png", height: 15 * heightScale,),
                                                Container(height: 60 * heightScale,),
                                              ],
                                            ),
                                            Container(
                                              width: 30 * widthScale,
                                            ),

                                            Column(
                                              children: [
                                                Text(user['investments'].toString(), style: TextStyle(fontSize: 50 * widthScale, color: Color.fromARGB(0xff, 0x48, 0x91, 0xff)),),
                                                Image.asset("assets/images/investment_text.png", height: 15 * heightScale,),
                                                ButtonTheme(
                                                  minWidth: 80 * widthScale,
                                                  height: 20 * heightScale,
                                                  child: RaisedButton(
                                                      color: Color.fromARGB(0xff, 0x6a, 0xcf, 0x99),
                                                      onPressed: () => {print("pressed")},
                                                      child: Text("Visualizar", style: TextStyle(color: Colors.white),)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Deposit(
                                          heightScale: heightScale,
                                          widthScale: widthScale,
                                        ),
                                        Container(
                                          height: 10 * heightScale,
                                        ),
                                        Withdraw(
                                          heightScale: heightScale,
                                          widthScale: widthScale,
                                        ),
                                        Container(
                                          height: 10 * heightScale,
                                        ),
                                        NewInvestments(
                                          heightScale: heightScale,
                                          widthScale: widthScale,
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            )
                        ),
                        Container(
                          height: 24 * heightScale,
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
                    onTap: () => Navigator.pushNamed(context, '/home'),
                  )
              )
            ],
          )
      ),
    );
  }
}
