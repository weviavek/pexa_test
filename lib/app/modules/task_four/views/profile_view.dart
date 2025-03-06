import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pexa/common/constants/constants.dart';

import '../controllers/task_four_controller.dart';

class ProfileView extends GetView<TaskFourController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TaskFourView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(80), child: Image.network(height: 150, width: 150, Constants.profilePicUrl, fit: BoxFit.cover)),
              SizedBox(height: 10),
              Text(Constants.profileName, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                Constants.profileBio,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: Get.back, child: Text('Back'))
            ],
          ),
        ));
  }
}
