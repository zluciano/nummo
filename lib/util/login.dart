import 'package:flutter/material.dart';
import 'package:nummo/util/buttons.dart';

class Authenticate extends StatelessWidget{
  Authenticate({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300 * heightScale,
        width: 277 * widthScale,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 66 * heightScale,
                ),
                LoginButton(heightScale: heightScale, widthScale: widthScale,),
                Container(
                  height: 25 * heightScale,
                ),
                SignUpButton(heightScale: heightScale, widthScale: widthScale,),
                Container(
                  height: 33 * heightScale,
                ),
                FlatButton(
                    color: Colors.white,
                    textColor: Color.fromARGB(0xff, 0x06, 0x4c, 0x6a),
                    onPressed: (){print("pressed");},
                    child: Text("Esqueci a senha", style: TextStyle(fontFamily: "Poiret One"),)
                ),
              ],
            ),
          ],
        )
    );
  }

}

class Login extends StatelessWidget{
  Login({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Text("Entre em sua conta", style: TextStyle(color: Colors.white),),
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
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(height: 22 * heightScale,),
                  Text("Usuário ou email", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "your@email.com",
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
                  Text("Senha", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "••••••••••••",
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
                  LoginButtonSubmit(
                    heightScale: heightScale,
                    widthScale: widthScale,
                  )
                ],
              ),
            ),
          ],
        )
    );
  }

}


class SignUp extends StatelessWidget{
  SignUp({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 484 * heightScale,
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
                child: Text("Crie uma conta", style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              height: 5 * heightScale,
            ),
            Container(
              height: 437 * heightScale,
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
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(height: 22 * heightScale,),
                  Text("Usuário ou email", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "your@email.com",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  Text("Senha", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "••••••••••••",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                          )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  Text("Confirme", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "••••••••••••",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  SignUpButtonSubmit(
                    heightScale: heightScale,
                    widthScale: widthScale,
                  ),
                  FlatButton(
                      color: Colors.white,
                      textColor: Color.fromARGB(0xff, 0x06, 0x4c, 0x6a),
                      onPressed: () => Navigator.pushNamed(context, '/signUpInvestorPage'),
                      child: Text("Quero me cadastrar como investidor", style: TextStyle(fontFamily: "Poiret One"),)
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

}


class SignUpInvestor extends StatelessWidget{
  SignUpInvestor({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 432 * heightScale,
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
                child: Text("Crie uma conta como investidor", style: TextStyle(color: Colors.white),),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(height: 22 * heightScale,),
                  Text("Balanço patrimonial", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "\$\$\$",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  Text("Declaração", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "••••••••••••",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  Text("Confirme", style: TextStyle(fontSize: 18 * widthScale),),
                  Container(height: 5 * heightScale,),
                  Container(
                    height: 49 * heightScale,
                    width: 267.38 * widthScale,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 * heightScale),
                        hintText: "••••••••••••",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(0xff, 0x8f, 0x8f, 0x8f)
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(height: 22 * heightScale,),
                  SignUpButtonSubmit(
                    heightScale: heightScale,
                    widthScale: widthScale,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

}