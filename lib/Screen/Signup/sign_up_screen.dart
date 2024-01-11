import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/Screen/Signup/components/signup_body.dart';
import 'package:myproject/components/rounded_button.dart';
import 'package:myproject/components/rounded_input_field.dart';

class SignupScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodySignup(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SIGNUP"),
            SvgPicture.asset("assets/icons/signup.svg", width: size.width * 0.5,),
            
            RoundedInputField(hintText: "Email", onChanged: (value) =>{},),

            PasswordField(),
            RoundedButton(press: (){}, text: "SIGNUP"),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account ? "),
                GestureDetector(
                  onTap: (){},
                  child: Text("Sign In", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

