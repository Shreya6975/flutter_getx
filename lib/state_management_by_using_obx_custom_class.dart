import 'package:flutter/material.dart';
import 'package:flutter_getx/student.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var student = Student();

  final student = Student(
    name: "Shreya Panchal",
    age: 24,
  ).obs;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management by using obx & custom class",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Management by using obx & custom class"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  "Name is ${student.value.name}",
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
                  // student.name.value = student.name.value.toUpperCase();
                  student.update((student) {
                    student!.name = student.name.toString().toUpperCase();
                  });
                },
                child: const Text(
                  "Uppercase Latter",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // student.name.value = student.name.value.toLowerCase();
                  student.update((student) {
                    student!.name = student.name.toString().toLowerCase();
                  });
                },
                child: const Text(
                  "Lowercase Latter",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
