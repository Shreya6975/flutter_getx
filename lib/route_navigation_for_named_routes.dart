import 'package:flutter/material.dart';
import 'package:flutter_getx/dashboard_page.dart';
import 'package:get/get.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Route navigation for named routes",
      initialRoute: "/",
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(
          name: '/',
          page: () => const MyApp(),
        ),
        GetPage(
          name: '/HomePage',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/DashboardPage',
          page: () => const DashboardPage(),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Route navigation for named routes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/HomePage");
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
