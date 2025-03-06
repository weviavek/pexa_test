import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_two_controller.dart';

class TaskTwoView extends GetView<TaskTwoController> {
  const TaskTwoView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Search Functionality'), centerTitle: true),
        body: GetBuilder<TaskTwoController>(builder: (context) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: controller.countrySearchController,
                  onChanged: (val) => controller.onChange(val),
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), hintText: 'Search Country'),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Text(controller.filteredList![index], style: TextStyle(fontSize: 16)),
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: controller.filteredList!.length),
              )
            ],
          );
        }),
      ),
    );
  }
}
