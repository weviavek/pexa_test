import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_three_controller.dart';

class TaskThreeView extends GetView<TaskThreeController> {
  const TaskThreeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TaskThreeController>(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('REST API'),
            centerTitle: true,
          ),
          body: controller.isPostLoading == true
              ? Center(child: CircularProgressIndicator())
              : controller.hasError == true
                  ? Center(child: Text('Error loading'))
                  : ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                      itemBuilder: (context, index) => ListTile(
                            title: Text(controller.posts![index].title ?? 'Title'),
                            subtitle: Text(controller.posts?[index].body ?? 'Body')
                          ),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: controller.posts?.length != null ? 10 : 0));
    });
  }
}
