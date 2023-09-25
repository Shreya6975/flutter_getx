import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/dependency_injection_controller.dart';
import 'package:flutter_getx/controller/services.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  debugPrint("This is the start of services");
  await Get.putAsync<Service>(() async => Service());
  debugPrint("the services are about to start");
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.putAsync<DependencyInjectionController>(() async => DependencyInjectionController());
    return GetMaterialApp(
      title: "GetX service",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().increment();
                },
                child: const Text(
                  "Increment Button",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
