import 'package:flutter/material.dart';
import 'package:flutter_playground/playground_controller.dart';
import 'package:flutter_playground/screens/listviewdemo.dart';
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
        primaryColor: Colors.brown,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Playground'),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 4.0,
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              children: [
                Obx(
                  () => Card(
                    child: ListTile(
                      title: Text('Count: ${controller.count}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          controller.decrement();
                        },
                      ),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Center(
                          child: Text(
                            'Custom List View',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inverseSurface),
                          ),
                        ),),
                    onTap: () {
                      Get.to(ListViewDemo());
                    },
                  ),
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: const Icon(Icons.add),
          onPressed: () {
            controller.increment();
          },
        ),
      ),
    );
  }
}
