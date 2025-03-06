
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({super.key, required this.title, required this.route});
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      title: Text(title, style: TextStyle(fontSize: 20, height: 1)),
      onTap: () => Get.toNamed(route),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
