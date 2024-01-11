import 'package:flutter/material.dart';
import 'package:myproject/components/text_field_container.dart';
import 'package:myproject/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon,color: kPrimaryColor,),
          hintText: hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  
  const PasswordField({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _PasswordFieldState();
  }
}

class _PasswordFieldState extends State<PasswordField> {
  bool passwordVisible = true;
  
  @override
  void initState(){
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: passwordVisible,
        decoration: InputDecoration(
            icon: const Icon(Icons.lock, color: kPrimaryColor),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(passwordVisible ?Icons.visibility:Icons.visibility_off),
              onPressed: (){
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              }
            ),
            hintText: "Your Password"),
        
      ),
    );
  }
}
