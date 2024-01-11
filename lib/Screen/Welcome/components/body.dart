import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logging/logging.dart';
import 'package:myproject/Screen/Login/login_screen.dart';
import 'package:myproject/Screen/Signup/sign_up_screen.dart';
import 'package:myproject/Screen/Welcome/components/background.dart';
import 'package:myproject/components/rounded_button.dart';
import 'package:myproject/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("WELCOME TO SUMMONER'S RIFT",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset("assets/icons/chat.svg", height: size.height * 0.4),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundedButton(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            text: "LOGIN"),
        RoundedButton(
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignupScreen();
            }));
          },
          text: "SIGNUP",
          color: kPrimaryLightColor,
          textColor: Colors.black,
        )
      ]),
    );
  }
}
