import 'package:flutter/material.dart';
import 'package:nummo/components/startPage.dart';
import 'package:nummo/components/loginPage.dart';
import 'package:nummo/components/signUpPage.dart';
import 'package:nummo/components/signUpInvestorPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:nummo/components/home.dart';

bool firstUse = true;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final routes = {
    '/': (BuildContext context) => new StartPage(),
    '/loginPage': (BuildContext context) => new LoginPage(),
    '/signUpPage': (BuildContext context) => new SignUpPage(),
    '/signUpInvestorPage': (BuildContext context) => new SignUpInvestorPage(),
    '/home': (BuildContext context) => new Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: firstUse ? '/' : '/',
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