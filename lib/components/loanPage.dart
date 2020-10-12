import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';
import 'package:nummo/util/buttons.dart';

class LoanPage extends StatefulWidget {
  LoanPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {

  final myController = TextEditingController();
  var check = false;
  var check2 = false;

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
                        Header(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        ),
                        Container(
                            height: 497 * heightScale,
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
                                    child: Text("Crie um pedido de empréstimo", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 5 * heightScale,
                                ),
                                Container(
                                  height: 445 * heightScale,
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
                                  child: ListView(

                                    children: [
                                      Container(height: 22 * heightScale,),
                                      Text("Valor desejado", style: TextStyle(fontSize: 18 * widthScale),),
                                      Container(height: 5 * heightScale,),
                                      Container(
                                        height: 49 * heightScale,
                                        width: 267.38 * widthScale,
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
                                      Container(height: 22 * heightScale,),
                                      Text("Deseja uma exposição extra?", style: TextStyle(fontSize: 18 * widthScale),),
                                      Container(height: 5 * heightScale,),
                                      CheckboxListTile(
                                        title: Text("Sim!"),
                                        controlAffinity: ListTileControlAffinity.leading,
                                        value: check,
                                        onChanged: (bool value) {
                                          setState(() {
                                            check = !check;
                                          });
                                        },
                                      ),
                                      Container(height: 22 * heightScale,),
                                      Text("Deseja mais tempo de exposição?", style: TextStyle(fontSize: 18 * widthScale),),
                                      Container(height: 5 * heightScale,),
                                      CheckboxListTile(
                                        title: Text("Sim!"),
                                        controlAffinity: ListTileControlAffinity.leading,
                                        value: check2,
                                        onChanged: (bool value) {
                                          setState(() {
                                            check2 = !check2;
                                          });
                                        },
                                      ),
                                      Container(height: 22 * heightScale,),
                                      LoanButtonSubmit(
                                        heightScale: heightScale,
                                        widthScale: widthScale,
                                        text: myController.text,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
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
                    onTap: () => Navigator.pushNamed(context, '/homeCompany'),
                  )
              )
            ],
          )
      ),
    );
  }
}

class Loan extends StatelessWidget{
  Loan({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;
  final myController = TextEditingController();
  var check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 437 * heightScale,
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
                child: Text("Crie um pedido de empréstimo", style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              height: 5 * heightScale,
            ),
            Container(
              height: 385 * heightScale,
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
              child: ListView(

                children: [
                  Container(height: 22 * heightScale,),
                  Text("Valor desejado", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
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
                  Container(height: 22 * heightScale,),
                  Text("Deseja uma exposição extra?", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Checkbox(
                    value: check,
                    onChanged: null,
                  ),
                  Container(height: 22 * heightScale,),
                  Text("Deseja mais tempo de exposição?", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(height: 22 * heightScale,),
                  LoanButtonSubmit(
                    heightScale: heightScale,
                    widthScale: widthScale,
                    text: myController.text,
                  )
                ],
              ),
            ),
          ],
        )
    );
  }

}