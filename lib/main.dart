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
        body: Container(
            color: Colors.pink,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text(
                        'Dane Max - Freelancer for flutter -',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    // Text('Dane Max - Freelancer for flutter - living in Lagos Nigeria sdfsdfsf fdsfd '),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8,
                    ),

                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    'Hello World',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ),
               Stack(
                children: [
                     SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/tour-5.jpeg',
                        fit: BoxFit.cover,
                        ),
                    ),
                    const SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.course-api.com/images/tours/tour-5.jpeg',
                        ),
                      ),
                    ),
                    ],
                  ),
                const SizedBox(
                  height: 40,
                ),
                const Text('Last Column child'),
              ]
              ),
          ),
      
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> debugPrint('you clicked'),
          child: const Icon(Icons.abc_outlined),
        ),
      ),
    );
  }
}