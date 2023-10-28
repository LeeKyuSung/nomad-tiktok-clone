import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

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
        home: Padding(
          padding: const EdgeInsets.all(Sizes.size14),
          child: Container(
              child: const Row(
            children: [
              Text("Hello"),
              Gaps.h20,
              Text("World"),
            ],
          )),
        ));
  }
}
