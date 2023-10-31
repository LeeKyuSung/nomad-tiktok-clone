import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      //   theme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     primaryColor: const Color(0xFFE9435A),
      //     appBarTheme: const AppBarTheme(
      //       foregroundColor: Colors.black,
      //       backgroundColor: Colors.white,
      //       elevation: .5,
      //       titleTextStyle: TextStyle(
      //         color: Colors.black,
      //         fontSize: Sizes.size16 + Sizes.size2,
      //         fontWeight: FontWeight.w600,
      //       ),
      //     ),
      //   ),
      home: MainNavigationScreen(),
    );
  }
}
