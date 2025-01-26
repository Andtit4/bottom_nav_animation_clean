// example/main.dart
import 'package:bottom_nav_animation_clean/presentation/widgets/bottom_nav_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: BottomNavAnimation(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          pages: [
            Center(child: Text('Home')),
            Center(child: Text('Settings')),
          ],
        ),
      ),
    );
  }
}