import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_one_controller.dart';

class TaskOneView extends GetView<TaskOneController> {
  const TaskOneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter Application'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(controller.count.value.toString(), style: TextStyle(fontSize: 20))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: controller.increment, child: Text('Increment ++')),
              ElevatedButton(onPressed: controller.decrement, child: Text('Decrement --'))
            ],
          )
        ],
      ),
    );
  }
}
