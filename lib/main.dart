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
        // this generates material 3 color scheme from a single color
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        // add this to use material 3 components
        useMaterial3: true,
      ),
      home: const MaterialThreeDemo(),
    );
  }
}
