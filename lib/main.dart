import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Column(
            children: [
              Text(Environments.sample),
            ],
          ),
        ),
      ),
    );
  }
}

final class Environments {
  static const sample =
      String.fromEnvironment('foo', defaultValue: 'no Hay tampoco');
}
