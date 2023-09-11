import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 8,
          children: List.generate(100, (index) => Padding(
              padding: const EdgeInsets.all(8.0), 
              child: Center(
                child: Text(
                  'dudu $index',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20, 
                    
                  ),
                ),
              ),
            )),
        ),
      ),
    );
  }
}
