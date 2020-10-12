import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:nummo/components/investmentsPage.dart';
import 'package:nummo/main.dart';

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
              onPressed: () => Navigator.pushNamed(context, '/homeCompany'),
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

class SignUpInvestorButton extends StatelessWidget{
  SignUpInvestorButton({Key key, this.heightScale, this.widthScale});

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
              onPressed: (){
                company['completed'] = true;
                company['risk'] = 'AA';
                Navigator.pushNamed(context, '/homeCompany');
                },
              child: Text("Completar cadastro")
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

class SignUpInvestorButtonSubmit extends StatelessWidget{
  SignUpInvestorButtonSubmit({Key key, this.heightScale, this.widthScale});

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

class Deposit extends StatelessWidget{
  Deposit({Key key, this.heightScale, this.widthScale});

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
              onPressed: () => {print("pressed")},
              child: Text("Depositar saldo")
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/deposit.png"),
        ),
      ],
    );
  }
}

class Withdraw extends StatelessWidget{
  Withdraw({Key key, this.heightScale, this.widthScale});

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
              color: Colors.black,
              onPressed: () => {print("pressed")},
              child: Text("Sacar balanço", style: TextStyle(color: Colors.white),)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/withdraw.png"),
        ),
      ],
    );
  }
}

class NewInvestments extends StatelessWidget{
  NewInvestments({Key key, this.heightScale, this.widthScale});

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
              color: Color.fromARGB(0xff, 0x24, 0xac, 0xf9),
              onPressed: () => Navigator.pushNamed(context, '/investmentsPage'),
              child: Text("Fazer novos investimentos", style: TextStyle(color: Colors.white, fontSize: 12 * widthScale),)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/withdraw.png"),
        ),
      ],
    );
  }
}

class LoanButtonSubmit extends StatelessWidget{
  LoanButtonSubmit({Key key, this.heightScale, this.widthScale, this.text});

  final double heightScale;
  final double widthScale;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 267.68 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24),
              onPressed: (){
                var len = investments.length;
                investments[len+1] = {
                  'id' : len+1,
                  'value' : int.parse(text),
                  'raised' : 0,
                  'company' : company['name'],
                  'cnpj' : company['cnpj'],
                  'deadline' : '15/10/2020',
                  'risk' : company['risk'],
                  'picture': 'assets/images/person'+((len%3)+1).toString()+'.png'
                };
                int loans = company['loans'];
                loans += 1;
                company['loans'] = loans;
                Navigator.pushNamed(context, '/loansPage');
              },
              child: Text("Cadastrar empréstimo")
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

class NewLoan extends StatelessWidget{
  NewLoan({Key key, this.heightScale, this.widthScale});

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
              onPressed: () => Navigator.pushNamed(context, '/loanPage'),
              child: Text("Novo empréstimo")
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/deposit.png"),
        ),
      ],
    );
  }
}

class Buy extends StatelessWidget{
  Buy({Key key, this.heightScale, this.widthScale, this.text});

  final double heightScale;
  final double widthScale;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ButtonTheme(
          minWidth: 227 * widthScale,
          height: 45 * heightScale,
          child: RaisedButton(
              color: Color.fromARGB(0xff, 0xf9, 0xca, 0x24),
              onPressed: () {
                int valor = int.parse(text);
                int b = user['balance'];
                if(b > valor){
                  b -= valor;
                  user['balance'] = b;
                  b = user['investments'];
                  b +=1;
                  user['investments'] = b;
                  b = investments[data['id']]['raised'];
                  b += valor;
                  investments[data['id']]['raised'] = b;
                }
                Navigator.pushNamed(context, '/investorPage');
                },
              child: Text("Comprar")
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30 * widthScale, top: 20 * heightScale),
          height: 17 * heightScale,
          width: 24 * widthScale,
          child: Image.asset("assets/images/deposit.png"),
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