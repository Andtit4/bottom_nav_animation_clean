// lib/presentation/widgets/bottom_nav_animation.dart
import 'package:bottom_nav_animation_clean/presentation/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavAnimation extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final List<Widget> pages;

  const BottomNavAnimation({super.key, required this.items, required this.pages});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    controller.pages.value = pages.toList();

    return GetBuilder<BottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: controller.pages[controller.currentIndex.value],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            items: items,
            onTap: controller.changePage,
          ),
        );
      },
    );
  }
}