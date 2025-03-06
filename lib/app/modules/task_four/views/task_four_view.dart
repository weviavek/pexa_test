import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pexa/app/modules/task_four/views/profile_view.dart';

import '../controllers/task_four_controller.dart';

class TaskFourView extends GetView<TaskFourController> {
  const TaskFourView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TaskFourView'),
          centerTitle: true,
        ),
        body: Center(child: ElevatedButton(onPressed: () => Get.to(ProfileView()), child: Text('Next Page'))));
  }
}
