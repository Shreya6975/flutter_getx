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
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is Bottom Sheet GetX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_incandescent),
                          title: const Text("Light Theme"),
                          onTap: () => {
                            Get.changeTheme(
                              ThemeData.light(),
                            ),
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_incandescent_outlined),
                          title: const Text("Dark Theme"),
                          onTap: () => {
                            Get.changeTheme(
                              ThemeData.dark(),
                            ),
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Bottom Sheet button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
