import 'package:flutter/material.dart';
import 'package:immobilier_app/chat_page..dart';
import 'package:immobilier_app/home_page.dart';
import 'package:immobilier_app/likes_page.dart';
import 'package:immobilier_app/stat_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  List pages=[
    HomePage(),
    LikesPage(),
    StatPage(),
    ChatPage(),
  ];
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,

        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(label: "home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "favorite",icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "stat",icon: Icon(Icons.support_agent)),
          BottomNavigationBarItem(label: "chat",icon: Icon(Icons.chat_bubble_outline_rounded)),
        ]) ,
     );
  }
}