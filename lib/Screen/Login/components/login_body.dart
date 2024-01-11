import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  final Widget child;
  const LoginBody({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png", width: size.width*0.3,)
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset("assets/images/login_bottom.png", width: size.width*0.4,),
          ),
          child
        ],
      ),
    );
  }
}