import 'package:flutter/material.dart';
import 'package:mobi/screen_b.dart';

class ScreenA extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenB()),
            );
          },
          child: Text('Go to Screen B'),
        ),
      ),
    );
  }
}