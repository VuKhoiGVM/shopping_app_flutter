import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue
                      ),
                      child: Center(child: Text("Hello")),
                    );
                  }),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
