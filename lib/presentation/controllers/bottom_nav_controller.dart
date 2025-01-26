import 'package:flutter/material.dart';
// lib/presentation/controllers/bottom_nav_controller.dart
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final RxList<Widget> pages = <Widget>[].obs;

  void changePage(int index) {
    if (index != currentIndex.value) {
      currentIndex.value = index;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}