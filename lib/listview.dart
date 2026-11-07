import 'package:flutter/material.dart';

void main() {
  runApp(const MyListView());
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(title: const Text('List View Contoh')),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Nama'),
              subtitle: const Text('John Doe'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ]
        )
      )
    );
  }
}