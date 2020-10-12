import 'package:flutter/material.dart';
import 'package:nummo/util/bottomButtons.dart';
import 'package:nummo/util/buttons.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';
import 'package:nummo/main.dart';

class InvestmentPage extends StatefulWidget {
  InvestmentPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InvestmentPageState createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    int ba = data['value'];
    var balance = data['value'].toString();
    if(ba >= 1000){
      balance = (ba/1000).toStringAsFixed(0) + ',' + (ba%1000==0 ? '000' : (ba%1000).toString());
    }
    ba = data['raised'];
    var raised = data['raised'].toString();
    if(ba >= 1000){
      raised = (ba/1000).toStringAsFixed(0) + ',' + (ba%1000==0 ? '000' : (ba%1000).toString());
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
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Empresa:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: Text(data['company'], style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Valor arrecadado:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: Text(raised, style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Valor requisitado:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: Text(balance, style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Risco do investimento:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: Text(data['risk'], style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Prazo de encerramento:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: Text(data['deadline'], style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 20 * heightScale,
                                        ),
                                        back == '/investmentsPage' ? Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 194 * widthScale,
                                              child: Text("Valor a comprar:", style: TextStyle(fontSize: 20 * widthScale, color: Color.fromARGB(0xff, 0xA2, 0x3B, 0x60)),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40 * heightScale,
                                              width: 134 * widthScale,
                                              child: TextField(
                                                controller: myController,
                                                decoration: InputDecoration(
                                                  hintText: "\$ 25,000",
                                                  contentPadding: EdgeInsets.only(left: 20 * heightScale),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                                                      )
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ) : Container(),
                                        back == '/investmentsPage' ? Buy(
                                          heightScale: heightScale,
                                          widthScale: widthScale,
                                          text: myController.text,
                                        ) : Container(),
                                        Container(
                                          height: 10 * heightScale,
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
                    onTap: () => Navigator.pushNamed(context, back),
                  )
              )
            ],
          )
      ),
    );
  }
}
