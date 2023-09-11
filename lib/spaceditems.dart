import 'package:flutter/material.dart';

void main() => runApp(const SpacedItemsList());

class SpacedItemsList extends StatelessWidget {
  const SpacedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 6; 

    return MaterialApp(
      title: 'Welcome To Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 230, 229, 232)),
        cardTheme: CardTheme(color: Color.fromARGB(255, 146, 9, 105)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                      items, (index) => ItemWidget(text: 'Dudu $index')),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width:200,
        child: Center(child: Text(text)),
      ),
    );
  }
}