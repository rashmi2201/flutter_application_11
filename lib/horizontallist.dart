import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 160,
                width: 160,
                color: Colors.yellow,
                child: const Row(
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Text(
                      'Stranger',
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 160,
                color:Colors.pinkAccent,
                child: const Row(
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Text(
                      'Panda',
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 160,
                color: Colors.lightBlue,
                child: const Row(
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Text(
                      'Dudu',
                      style: TextStyle(color: Colors.pinkAccent),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 160,
                color: Colors.redAccent,
                child: const Row(
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Text(
                      'Rashmi',
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
