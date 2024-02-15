import 'package:flutter/material.dart';

void main() {
  runApp(MyCommonWidgetsApp());
}

class MyCommonWidgetsApp extends StatelessWidget {
  const MyCommonWidgetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Common Widgets Example'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('Container'),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(title: Text('List Item 1')),
                  ListTile(title: Text('List Item 2')),
                  ListTile(title: Text('List Item 3')),
                ],
              ),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            Image.network('https://www.w3schools.com/images/lamp.jpg'),
          ],
        ),
      ),
    );
  }
}
