import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

class LoginButton extends StatelessWidget{
  LoginButton({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 227 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24),
              onPressed: () => Navigator.pushNamed(context, '/loginPage'),
              child: Text("Já possuo conta")
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/bee.png"),
        ),
      ],
    );
  }
}

class LoginButtonSubmit extends StatelessWidget{
  LoginButtonSubmit({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 267.68 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24),
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text("Fazer Login")
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/bee.png"),
        ),
      ],
    );
  }
}

class SignUpButton extends StatelessWidget{
  SignUpButton({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 227 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0x93, 0x33, 0xb5),
              onPressed: () => Navigator.pushNamed(context, '/signUpPage'),
              child: Text("Criar nova conta", style: TextStyle(color: Colors.white),)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/hive.png"),
        ),
      ],
    );
  }
}

class SignUpButtonSubmit extends StatelessWidget{
  SignUpButtonSubmit({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 267.68 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0x93, 0x33, 0xb5),
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text("Criar nova conta", style: TextStyle(color: Colors.white),)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/hive.png"),
        ),
      ],
    );
  }
}

class BackToStart extends StatelessWidget{
  BackToStart({Key key, this.heightScale, this.widthScale});

  final double heightScale;
  final double widthScale;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ImageButton(
          children: <Widget>[],
          width: 40.0 * widthScale,
          height: 40.0 * heightScale,
          pressedImage: Image.asset(
            "assets/images/back.png",
          ),
          unpressedImage: Image.asset("assets/images/back.png"),
          onTap: () {
            print('test');
          },
        )
    );
  }
}