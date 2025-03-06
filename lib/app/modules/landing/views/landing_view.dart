import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pexa/app/routes/app_pages.dart';
import 'package:pexa/app/widgets/app_list_tile.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LandingView'),
          centerTitle: true,
        ),
        body: Column(children: [
          AppListTile(title: 'Task One', route: Routes.TASK_ONE),
          AppListTile(title: 'Task Two', route: Routes.TASK_TWO),
          AppListTile(title: 'Task Three', route: Routes.TASK_THREE),
          AppListTile(title: 'Task Four', route: Routes.TASK_FOUR),
          GetBuilder<LandingController>(builder: (context) {
            return ListTile(
                title: Text("Dark Mode", style: TextStyle(fontSize: 20, height: 1)),
                trailing: Switch(value: controller.isDarkMode, onChanged: (_) => controller.toggleTheme()));
          })
        ]));
  }
}
