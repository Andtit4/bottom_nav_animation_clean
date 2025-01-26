import 'package:bottom_nav_animation_clean/presentation/widgets/bottom_nav_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Utilisation de BottomNavAnimationClean'),
        ),
        body: BottomNavAnimation(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          pages: [
            Center(child: Text('Home')),
            Center(child: Text('List')),
            Center(child: Text('Search')),
            Center(child: Text('Add')),
            Center(child: Text('Settings')),
          ],
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white70,
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }
}