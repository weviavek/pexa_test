import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pexa/common/constants/constants.dart';

class TaskTwoController extends GetxController {
  TextEditingController countrySearchController = TextEditingController();
  List<String>? filteredList;
  @override
  void onInit() {
    filteredList = Constants.countryNames;
    countrySearchController.clear();
    update();
    super.onInit();
  }

  void onChange(String value) {
    filteredList = value.isEmpty ? Constants.countryNames : Constants.countryNames.where((val) => val.contains(value)).toList();
    update();
  }
}
