import 'package:flutter/material.dart';
 

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
            Navigator.pushNamed(context, '/screenB');
           },
          child: Text('Go back to Screen B'),
        ),
      ),
    );
  }
}