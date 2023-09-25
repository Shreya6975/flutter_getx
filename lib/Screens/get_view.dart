import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<Controller> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return GetMaterialApp(
      title: "Get-view",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Get-view"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  'The value is ${controller.count}',
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
                  debugPrint(controller.hashCode.toString());
                  controller.increment();
                },
                child: const Text(
                  "Increment Button",
                ),
              ),  const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  debugPrint(controller.hashCode.toString());
                  controller.decrement();
                },
                child: const Text(
                  "Decrement Button",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
