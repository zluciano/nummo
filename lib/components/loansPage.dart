import 'package:flutter/material.dart';
import 'package:nummo/util/bottomButtons.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';
import 'package:nummo/main.dart';
import 'package:nummo/util/buttons.dart';

class LoansPage extends StatefulWidget {
  LoansPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoansPageState createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {

  @override
  Widget build(BuildContext context) {
    final heightScale = MediaQuery. of(context). size. height / 778;
    final widthScale = MediaQuery. of(context). size. width / 406;
    List<Widget> invs = [];
    investments.forEach((key, value) {
      if(value['company'] == company['name']){
        invs.add(
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5 * widthScale),
                  height: 88 * heightScale,
                  width: 332 * widthScale,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 35 * widthScale,
                          child: Image.asset(value['picture'])
                      ),
                      Container(
                        width: 10 * widthScale,
                      ),
                      Container(
                        width: 35 * widthScale,
                        child: Text(value['risk'], style: TextStyle(fontSize: 11 * widthScale, color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),),),
                      ),
                      Container(
                        width: 90 * widthScale,
                        child: Text(value['company'], style: TextStyle(fontSize: 11 * widthScale, color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),),),
                      ),
                      Container(
                        width: 75 * widthScale,
                        child: Text(value['raised'].toString() + "/" + value['value'].toString(), style: TextStyle(fontSize: 11 * widthScale, color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),),),
                      ),
                      Container(
                        width: 50 * widthScale,
                        child: Text(value['deadline'], style: TextStyle(fontSize: 11 * widthScale, color: Color.fromARGB(0xff, 0x80, 0x1d, 0x40),),),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                    height: 88 * heightScale,
                    minWidth: 332 * widthScale,
                    onPressed: (){
                      data = value;
                      back = '/loansPage';
                      Navigator.pushNamed(context, '/investmentPage');
                      },
                    child: null
                )
              ],
            )
        );
      }
    });
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
                            height: 377 * heightScale,
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
                                    child: Text("Escolha seu investimento", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 5 * heightScale,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10 * widthScale),
                                  height: 30 * heightScale,
                                  width: 332 * widthScale,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
                                      color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20 * widthScale,
                                      ),
                                      Container(
                                        width: 10 * widthScale,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 35 * widthScale,
                                        child: Text("Risco", style: TextStyle(fontSize: 10 * widthScale, color: Colors.black,),),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 90 * widthScale,
                                        child: Text("Empresa", style: TextStyle(fontSize: 10 * widthScale, color: Colors.black,),),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 75 * widthScale,
                                        child: Text("Arrecadado/Total", style: TextStyle(fontSize: 10 * widthScale, color: Colors.black,),),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50 * widthScale,
                                        child: Text("Deadline", style: TextStyle(fontSize: 10 * widthScale, color: Colors.black,),),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    height: 295 * heightScale,
                                    width: 332 * widthScale,
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
                                    child: ListView(
                                      padding: EdgeInsets.only(top: 0),
                                      children: invs,
                                    )
                                ),
                              ],
                            )
                        ),
                        NewLoan(
                          heightScale: heightScale,
                          widthScale: widthScale,
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
                    onTap: () => Navigator.pushNamed(context, '/homeCompany'),
                  )
              )
            ],
          )
      ),
    );
  }
}
