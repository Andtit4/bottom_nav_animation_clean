// lib/presentation/widgets/bottom_nav_animation.dart
import 'package:bottom_nav_animation_clean/presentation/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavAnimation extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final List<Widget> pages;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  BottomNavAnimation({
    Key? key,
    required this.items,
    required this.pages,
    this.backgroundColor,
    this.selectedItemColor,
    this.unselectedItemColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    controller.pages.value = pages.map((page) => page).toList();

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
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              /* boxShadow: [
                BoxShadow(color: Colors.black38, blurRadius: 10)
              ], */
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.currentIndex.value,
                selectedItemColor: selectedItemColor ?? Colors.white,
                unselectedItemColor: unselectedItemColor ?? Colors.grey,
                onTap: controller.changePage,
                items: items,
              ),
            ),
          ),
        );
      },
    );
  }
}