import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Route navigation for un-named routes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Route navigation for un-named routes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(const HomePage());
                },
                child: const Text("Go to  Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
