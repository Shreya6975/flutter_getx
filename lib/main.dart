import 'package:flutter/material.dart';
import 'package:flutter_getx/unique_controllers.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  UniqueController controller = Get.put(UniqueController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique ID",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique Id"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<UniqueController>(
                id: "Counter",
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
              GetBuilder<UniqueController>(
                id: "Counter",
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
                  controller.increment();
                },
                child: const Text("Increment Button"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
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
