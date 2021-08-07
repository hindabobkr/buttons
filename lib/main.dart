import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('A Raised Button'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  print('hello');
                }),
            TextButton(
              onPressed: () {
                print('Welcom');
              },
              child: Text('A Flat Button'),
              style: TextButton.styleFrom(primary: Colors.black),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    side: BorderSide(color: Colors.blue)),
                child: Text('An Outline Button'),
                onPressed: () {
                  print('An Outline Button');
                })
          ],
        ),
      ),
    );
  }
}
