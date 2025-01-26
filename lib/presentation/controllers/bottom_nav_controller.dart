import 'package:flutter/material.dart';
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