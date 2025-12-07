import 'package:flutter/material.dart';
import 'package:widgetbook_app/button/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Button(
            text: 'Button',
            onPressed: () {
              debugPrint('Button pressed');
            },
          ),
        ),
      ),
    );
  }
}
