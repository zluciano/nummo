import 'package:flutter/material.dart';
import 'package:nummo/util/login.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/util/header.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var invest = true;

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
                        Stack(
                          children: [
                            Container(
                              height: 44 * heightScale,
                              width: 333 * widthScale,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24),
                                  borderRadius: BorderRadius.all(Radius.circular(4 * heightScale)),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 44 * heightScale,
                                    width: 165 * widthScale,
                                    child: Text("Investidor", style: TextStyle(color: Colors.black),),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 44 * heightScale,
                                    width: 165 * widthScale,
                                    child: Text("Empresa", style: TextStyle(color: Colors.black),),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                FlatButton(
                                  height: 44 * heightScale,
                                  minWidth: 165 * widthScale,
                                  onPressed: (){
                                    setState(() {
                                      invest = true;
                                    });
                                  },
                                ),
                                FlatButton(
                                  height: 44 * heightScale,
                                  minWidth: 165 * widthScale,
                                  onPressed: (){
                                    setState(() {
                                      invest = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        invest ? SignUpInvestor(
                          heightScale: heightScale,
                          widthScale: widthScale,
                        )
                        : SignUp(
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
                    onTap: () => Navigator.pushNamed(context, '/'),
                  )
              )
            ],
          )
      ),
    );
  }
}
