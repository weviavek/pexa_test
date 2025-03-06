import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    Get.changeTheme(_isDarkMode ? ThemeData.dark() : ThemeData.light());
    update();
  }
}
