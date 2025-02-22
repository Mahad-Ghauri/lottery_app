import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
            style: TextStyle(fontFamily: 'Satisfy'),
          ),
          backgroundColor: const Color.fromARGB(255, 78, 176, 224),
        ),
        
        body: SafeArea(
          child: Center(
              child: Text(
            x.toString(),
            style: TextStyle(fontSize: 50),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
            print(x.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
