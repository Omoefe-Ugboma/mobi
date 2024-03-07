import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "FLutter Basics",),
        ),
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
          ],
          )

      )
    );
  }
}