import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color ? color, textColor;
  const RoundedButton({
    super.key,
    this.color = kPrimaryColor,
    required this.press,
    this.textColor = Colors.white,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed:press,
          child: 
            Text(text, style: TextStyle(color: textColor))
        ),
      ),
    );
  }
}

