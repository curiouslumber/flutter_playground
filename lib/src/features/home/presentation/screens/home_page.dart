import 'package:flutter/material.dart';
import 'package:flutter_playground/src/features/listview/presentation/screens/list_view_demo.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Playground'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor, 
        elevation: 4.0,
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Get.to(() => ListViewDemo()),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal[100]),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                shadowColor: WidgetStatePropertyAll(Colors.tealAccent[100]),
              ),
              child: const Text("ListView"),
            ),
            ElevatedButton(
              onPressed: () {  },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal[200]),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                shadowColor: WidgetStatePropertyAll(Colors.tealAccent[100]),
              ),
              child: const Text("Second"),
            ),
            ElevatedButton(
              onPressed: () {  },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal[300]),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                shadowColor: WidgetStatePropertyAll(Colors.tealAccent[100]),
              ),
              child: const Text("Third"),
            ),
          ],
        )
      ),
    );
  }
}