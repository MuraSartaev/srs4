import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(color: Colors.red),
                  ),
                );
              },
              child: Text('Красная'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(color: Colors.yellow),
                  ),
                );
              },
              child: Text('Желтая'),
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(color: Colors.blue),
                  ),
                );
              },
              child: Text('Синяя'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Color color;

  SecondPage({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вторая страница'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text(
            'Hello Murat',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ),
    );
  }
}