import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller controller = Get.put(Controller());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Reactive state management by using getx controller",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Reactive state management by using getx controller"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<Controller>(
                init: Controller(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.find<Controller>().increment();
                  controller.increment();
                },
                child: const Text("Increment Button"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.find<Controller>().decrement();
                  controller.decrement();
                },
                child: const Text("Decrement Button"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
