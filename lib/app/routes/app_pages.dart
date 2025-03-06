import 'package:get/get.dart';

import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/task_four/bindings/task_four_binding.dart';
import '../modules/task_four/views/profile_view.dart';
import '../modules/task_four/views/task_four_view.dart';
import '../modules/task_one/bindings/task_one_binding.dart';
import '../modules/task_one/views/task_one_view.dart';
import '../modules/task_three/bindings/task_three_binding.dart';
import '../modules/task_three/views/task_three_view.dart';
import '../modules/task_two/bindings/task_two_binding.dart';
import '../modules/task_two/views/task_two_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.TASK_ONE,
      page: () => const TaskOneView(),
      binding: TaskOneBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.TASK_TWO,
      page: () => const TaskTwoView(),
      binding: TaskTwoBinding(),
    ),
    GetPage(
      name: _Paths.TASK_THREE,
      page: () => const TaskThreeView(),
      binding: TaskThreeBinding(),
    ),
    GetPage(
      name: _Paths.TASK_FOUR,
      page: () => const TaskFourView(),
      binding: TaskFourBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
    ),
  ];
}
