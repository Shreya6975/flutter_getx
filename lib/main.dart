import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:flutter_getx/controller/first_controller.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:get/get.dart';
import 'controller/home_controller_binding.dart';
import 'controller/second_controller.dart';

void main() {
  AppController().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SecondController(),
      title: "Binding GetX",
      /*getPages: [
        GetPage(
          name: "/home",
          page: () => const Home(),
          binding: HomeControllerBinding(),
        ),
      ],*/
      getPages: [
        GetPage(
          name: "/home",
          page: () => const Home(),
          binding: BindingsBuilder(
            () => Get.lazyPut<HomeControllerBinding>(
              () => HomeControllerBinding(),
            ),
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Binding GetX"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "The value is ${Get.find<FirstController>().count}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<FirstController>().increment();
                },
                child: const Text(
                  "Increment Button",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(const Home());
                  // Get.toNamed("/home");
                  Get.to(
                    const Home(),
                    binding: HomeControllerBinding(),
                  );
                },
                child: const Text(
                  "Home",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
