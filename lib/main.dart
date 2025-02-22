import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int? x = 0;
final int winningNumber = 5;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              'Lottery App',
              style: TextStyle(fontFamily: 'Merienda'),
            )),
            backgroundColor: Colors.tealAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Text('The winning lottery number is $winningNumber')),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.amberAccent.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: x == winningNumber
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              Icon(
                                Icons.done_all_outlined,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Contgratulations you won the lottery ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Merienda'),
                              ),
                            ])
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Better luck next time your number is $x\n. Try again',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: 'Merienda'),
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(10);
              print(x.toString());

              setState(() {});
            },
            child: Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
