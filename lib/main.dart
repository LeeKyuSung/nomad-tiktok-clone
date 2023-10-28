import 'package:flutter/material.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
        theme: ThemeData(primaryColor: const Color(0xFFE9435A)),
        home: Container(
          child: const Center(
            child: Text('Hello, world!'),
          ),
        ));
  }
}
