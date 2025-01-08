import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
const ListViewDemo({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Demo'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor, 
        elevation: 4.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
            Text('Item 4'),
            Text('Item 5'),
            Text('Item 6'),
            Text('Item 7'),
            Text('Item 8'),
            Text('Item 9'),
            Text('Item 10'),
          ],
        ),
      )
    );
  }
}