import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/Screen/Login/components/login_body.dart';
import 'package:myproject/components/rounded_button.dart';
import 'package:myproject/components/rounded_input_field.dart';
import 'package:myproject/components/text_field_container.dart';
import 'package:myproject/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBody(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            width: size.width * 0.7,
          ),
          RoundedInputField(
            onChanged: (value) => {},
            hintText: "Your Email",
          ),
          PasswordField(),

          RoundedButton(press: (){
            Navigator.of(context).pushNamedAndRemoveUntil("/main", (route) => false,);
          }, text: "LOGIN",),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account ? "
              ),
              GestureDetector(
                onTap: (){
                  
                },
                child: const Text(
                  "Sign Up"
                ,style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          )
        ]),
      ),
    );
  }
}

