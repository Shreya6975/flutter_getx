import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/internationalization_controller.dart';
import 'package:get/get.dart';
import '../class/messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  InternationalizationController internationalizationController = Get.put(InternationalizationController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'America'),
      fallbackLocale: const Locale('en', 'America'),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  internationalizationController.changeLanguage('urdu', 'Pakistan');
                },
                child: const Text(
                  "Urdu",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  internationalizationController.changeLanguage('en', 'America');
                },
                child: const Text(
                  "English",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  internationalizationController.changeLanguage('arabic', 'Saudi Arabia');
                },
                child: const Text(
                  "Arabic",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
