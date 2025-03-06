import 'package:get/get.dart';
import 'package:pexa/utils/utils.dart';

class TaskOneController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    count.value = 0;
    super.onInit();
  }

  void increment() => count.value++;
  void decrement() => count.value == 0 ? Utils.show(message: 'Cannot go below 0') : count.value--;
}
