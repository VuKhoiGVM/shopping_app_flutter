import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/Screen/Main/Home/home_screen.dart';
import 'package:myproject/Screen/Main/Shop/shopping_screen.dart';
import 'package:myproject/constant.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Menus currentIndex = Menus.home;
  final pages = [
    HomeScreen(),
    ShoppingScreen(),
    Center(child: Text("Profie")),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex.index,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffc172e9) ,
        onPressed: () => setState(() {
          currentIndex = Menus.shopping;
        }),
        child: SvgPicture.asset("assets/icons/shopping.svg", width: 25,height: 25),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

enum Menus{
  home,
  shopping,
  profie
}

class MyBottomNavigation extends StatelessWidget{
  final int currentIndex;
  final ValueChanged<Menus>onTap;

  const MyBottomNavigation({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white),
      child: 
        Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: (){
                  onTap(Menus.home);
                },
                icon: SvgPicture.asset("assets/icons/home.svg", width: 32,height: 32,),
              ),
            ),
            Spacer(),
            Expanded(
              child: IconButton(
                onPressed: (){
                  onTap(Menus.profie);
                },
                icon: SvgPicture.asset("assets/icons/person.svg", width: 32,height: 32)
              ),
            )
          ]
        ),
    );
  }
}

