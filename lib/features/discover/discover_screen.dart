import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

final tabs = [
  "Top",
  "Users",
  "Videos",
  "Sounds",
  "LIVE",
  "Shopping",
  "Brands",
];

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Discover'),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: Sizes.size16,
            ),
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade500,
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              itemCount: 20,
              padding: const EdgeInsets.all(
                Sizes.size6,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: Sizes.size10,
                mainAxisSpacing: Sizes.size10,
                childAspectRatio: 9 / 24,
              ),
              //   itemBuilder: (context, index) => Image.asset(
              //     "assets/images/placeholder.jpg",
              //     fit: BoxFit.cover,
              //   ),
              //   itemBuilder: (context, index) => Image.network(
              //     "https://scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/452384821_510839558053963_4842591295740191804_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYyOTM1MCJ9&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=cOdvKY0V2goQ7kNvgFdIr3I&edm=AEhyXUkBAAAA&ccb=7-5&ig_cache_key=MzQxNzEyNTcxMjQ3Mjg4MDk1Nw%3D%3D.2-ccb7-5&oh=00_AYDDgUMMzbRu991PUbi5QfxyFkxEo1g8G_Sa2lWOUCf_jA&oe=66BDF4D5&_nc_sid=8f1549",
              //   ),
              itemBuilder: (context, index) => Column(
                children: [
                  AspectRatio(
                    aspectRatio: 9 / 16,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/images/placeholder.jpg",
                      image:
                          "https://scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/452384821_510839558053963_4842591295740191804_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYyOTM1MCJ9&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=cOdvKY0V2goQ7kNvgFdIr3I&edm=AEhyXUkBAAAA&ccb=7-5&ig_cache_key=MzQxNzEyNTcxMjQ3Mjg4MDk1Nw%3D%3D.2-ccb7-5&oh=00_AYDDgUMMzbRu991PUbi5QfxyFkxEo1g8G_Sa2lWOUCf_jA&oe=66BDF4D5&_nc_sid=8f1549",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gaps.v10,
                  const Text(
                    "This is very long caption for my tiktok that im upload just now currently",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v8,
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          foregroundImage: NetworkImage(
                            "https://scontent-hkg1-2.cdninstagram.com/v/t51.2885-19/452389750_1213676459657799_5898586310671656980_n.jpg?_nc_ht=scontent-hkg1-2.cdninstagram.com&_nc_cat=103&_nc_ohc=_nsfKEEq5kEQ7kNvgGRpkrk&edm=AFg4Q8wBAAAA&ccb=7-5&oh=00_AYDMNw9xYJpMNPFS-oB6Ys1MSzWVzyzsaoKT5JSPfMX47w&oe=66BE212B&_nc_sid=0b30b7",
                          ),
                        ),
                        Gaps.h4,
                        const Expanded(
                          child: Text(
                            "My Avatar is going to be very long",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Gaps.h4,
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: Sizes.size16,
                          color: Colors.grey.shade600,
                        ),
                        Gaps.h2,
                        const Text(
                          "2.9M",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            for (var tab in tabs.skip(1))
              Center(
                child: Text(
                  tab,
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
