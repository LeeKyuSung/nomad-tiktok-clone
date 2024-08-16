import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          stretch: true,
          pinned: true,
          snap: true,
          backgroundColor: Colors.teal,
          elevation: 1,
          collapsedHeight: 80,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.blurBackground,
              StretchMode.zoomBackground,
              StretchMode.fadeTitle
            ],
            background: Image.asset(
              "assets/images/placeholder.jpg",
              fit: BoxFit.cover,
            ),
            title: const Text("Hello"),
            titlePadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            childCount: 100,
            (context, index) => Container(
              color: Colors.amber[100 * (index % 9)],
              child: Align(
                alignment: Alignment.center,
                child: Text("Item $index"),
              ),
            ),
          ),
          itemExtent: 100,
        )
      ],
    );
  }
}
