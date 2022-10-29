import 'package:flutter/material.dart';
import 'package:prac/login_page.dart';
import 'package:prac/make_account.dart';
import 'package:prac/routes.dart';
import 'package:prac/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.MakeAccount,
      routes: {
        // "/": (context) => SplashScreen(),
        MyRoutes.loginpage: (context) => LoginPage(),
        MyRoutes.splashscreen: (context) => SplashScreen(),
        MyRoutes.MakeAccount: (context) => MakeAccount(),
      },
    );
  }
}

// git push --set-upstream origin day1