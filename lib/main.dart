import 'package:flutter/material.dart';
import 'package:flutter_playground/playground_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PlaygroundController controller = Get.put(PlaygroundController());
    return GetMaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Playground'),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor, 
          elevation: 4.0,
        ),
        body: Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.surface,
          child: Obx(
            () => Text(
              controller.count.value.toString(),
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.surfaceDim,
          child: const Icon(Icons.add),
          onPressed: () {
            controller.increment();
          },
        ),
      ),
    );
  }
}
