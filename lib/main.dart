import 'package:flutter/material.dart';
import 'package:nummo/components/startPage.dart';
import 'package:nummo/components/loginPage.dart';
import 'package:nummo/components/signUpPage.dart';
import 'package:nummo/components/signUpInvestorPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:nummo/components/home.dart';
import 'package:nummo/components/homeCompany.dart';
import 'package:nummo/components/investorPage.dart';
import 'package:nummo/components/notInvestorPage.dart';
import 'package:nummo/components/investmentsPage.dart';
import 'package:nummo/components/investmentPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nummo/components/loading.dart';
import 'package:nummo/components/loanPage.dart';
import 'package:nummo/components/loansPage.dart';

bool logged = false;

var data = {};

var back = '';

var user = {
  'username' : 'Luciano',
  'email' : 'zluciano.t19@gmail.com',
  'balance' : 3350,
  'investments' : 31,
  'next_pay' : 850.47,
};

var company = {
  'name' : 'Pizza na Lenha',
  'cnpj' : '123456789',
  'completed' : false,
  'balance' : 0,
  'loans' : 0,
  'next_pay' : 0,
  'risk' : '',
};

var investments = {
  1: {
    'id' : 1,
    'value' : 15000,
    'raised' : 11550,
    'company' : 'Pizzaria dos Sabóia',
    'cnpj' : '123456789',
    'deadline' : '15/10/2020',
    'risk' : 'AAA',
    'picture': 'assets/images/person1.png'
  },
  2: {
    'id' : 2,
    'value' : 5000,
    'raised' : 50,
    'company' : 'Bolo Real',
    'cnpj' : '123456789',
    'deadline' : '11/10/2020',
    'risk' : 'AA',
    'picture': 'assets/images/person2.png'
  },
  3: {
    'id' : 3,
    'value' : 125000,
    'raised' : 71500,
    'company' : 'Macarrão Oriental',
    'cnpj' : '123456789',
    'deadline' : '7/11/2020',
    'risk' : 'AAA',
    'picture': 'assets/images/person3.png'
  },
  4: {
    'id' : 4,
    'value' : 20000,
    'raised' : 4550,
    'company' : 'Fogão da Zena',
    'cnpj' : '123456789',
    'deadline' : '08/10/2020',
    'risk' : 'B',
    'picture': 'assets/images/person1.png'
  },
  5: {
    'id' : 5,
    'value' : 50000,
    'raised' : 45500,
    'company' : 'Sabor do Sertão',
    'cnpj' : '123456789',
    'deadline' : '07/10/2020',
    'risk' : 'A',
    'picture': 'assets/images/person2.png'
  },
  6: {
    'id' : 6,
    'value' : 10000,
    'raised' : 500,
    'company' : 'Marmita na Hora',
    'cnpj' : '123456789',
    'deadline' : '18/10/2020',
    'risk' : 'C',
    'picture': 'assets/images/person3.png'
  },
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _initialized = false;
  bool _error = false;

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  final routes = {
    '/': (BuildContext context) => new StartPage(),
    '/loginPage': (BuildContext context) => new LoginPage(),
    '/signUpPage': (BuildContext context) => new SignUpPage(),
    '/signUpInvestorPage': (BuildContext context) => new SignUpInvestorPage(),
    '/home': (BuildContext context) => new Home(),
    '/homeCompany': (BuildContext context) => new HomeCompany(),
    '/investorPage': (BuildContext context) => new InvestorPage(),
    '/loanPage': (BuildContext context) => new LoanPage(),
    '/loansPage': (BuildContext context) => new LoansPage(),
    '/notInvestorPage': (BuildContext context) => new NotInvestorPage(),
    '/investmentsPage': (BuildContext context) => new InvestmentsPage(),
    '/investmentPage': (BuildContext context) => new InvestmentPage(),
    '/loading' : (BuildContext context) => new Loading()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: logged ? '/home' : '/',
      onGenerateRoute: (settings) {
        return PageTransition(
          child: routes[settings.name](context),
          type: PageTransitionType.rightToLeft,
          duration: new Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          settings: settings,
        );
      },
    );
}
}