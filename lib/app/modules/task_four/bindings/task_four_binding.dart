import 'package:get/get.dart';

import '../controllers/task_four_controller.dart';

class TaskFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskFourController>(
      () => TaskFourController(),
    );
  }
}
