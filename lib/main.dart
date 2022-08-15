import 'dart:ui';
import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 124, 77, 255),
          title: Text('Expense Tracker'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // our Chart
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.deepPurpleAccent,
                    child: Text('Chart'),
                    elevation: 8,
                  ),
                ),
               UserTransactions()
              ],
            ),
        ),
        );
  }
}
