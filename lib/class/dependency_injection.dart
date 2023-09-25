import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/dependency_injection_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  /*DependencyInjectionController controller = Get.put(
    DependencyInjectionController(),
    tag: 'coding cafe 1',
    permanent: true,
  );*/

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => DependencyInjectionController(), tag: 'coding cafe 1', fenix: true);
    // Get.create(() => DependencyInjectionController());
    Get.putAsync<DependencyInjectionController>(() async => await DependencyInjectionController());
    return GetMaterialApp(
      title: "Dependency Injection",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dependency Injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.find<DependencyInjectionController>(tag: 'coding cafe 1');
                  // Get.find<DependencyInjectionController>(tag: 'coding cafe 1');
                  // Ge.find<DependencyInjectionController>();
                  Get.find<DependencyInjectionController>().increment();
                },
                child: const Text(
                  "Click Here",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
