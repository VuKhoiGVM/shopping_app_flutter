import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.purple.shade200,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              
            )
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
            )
          )
          
        ],
      )


        
    );
  }
}