import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pexa/app/routes/app_pages.dart';

void main() => runApp(const PexaApp());

class PexaApp extends StatelessWidget {
  const PexaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pexa",
      navigatorObservers: [GetObserver()],
      navigatorKey: Get.key,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: (_, child) => child ?? const SizedBox.shrink(),
    );
  }
}
