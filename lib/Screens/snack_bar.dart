import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snack Bar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is snack bar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("Its snack bar", "Hello snack bar");
                },
                child: const Text("Show Snack bar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
