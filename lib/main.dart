import 'package:flutter/material.dart';

import 'material_three_demo.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3 demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const MaterialThreeDemo(),
    );
  }
}
