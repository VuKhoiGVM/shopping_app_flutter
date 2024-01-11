import 'package:flutter/material.dart';
import 'package:myproject/Screen/Main/Home/home_screen.dart';
import 'package:myproject/Screen/Main/Shop/shopping_screen.dart';
import 'package:myproject/Screen/Main/main_screen.dart';
import 'package:myproject/Screen/Welcome/welcome_screen.dart';
import 'package:myproject/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      initialRoute:"/",
      routes: {
        "/":(context)=> WelcomeScreen(),
        "/shopping":(context) => ShoppingScreen(),
        "/main":(context) => MainScreen(),
        "/home":(context) => HomeScreen()

      },
    );
  }
}

