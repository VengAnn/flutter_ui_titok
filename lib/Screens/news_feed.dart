import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_tiktok/Widgets/IconReusableOn_following_for_you_widget.dart';

import '../Widgets/Constant.dart';

// ignore: camel_case_types
class news_feedScreen extends StatelessWidget {
  const news_feedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.95,
          child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.amber,
                  child: SafeArea(
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height,
                          child: SafeArea(
                            child: ClipRRect(
                              child: Image.network(
                                "https://1.bp.blogspot.com/-vdzLpHaoE8g/YCgchxEAyaI/AAAAAAAAEoQ/bUwLefj19mAaiGE6BEMHsIQ3-BiDEDpdgCLcBGAsYHQ/s590/Dasha%2BTaran%2Bphotos.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: kColorLigth,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              "https://www.sukhbeerbrar.com/wp-content/uploads/2021/11/taaarannn_103724574_263361155104304_1562130644305545690_n.jpg",
                            ),
                          ),
                          Positioned(
                            bottom: -15,
                            left: 12,
                            child: CircleAvatar(
                              radius: 12,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: kColorLigth,
                      size: 35,
                    ),
                    const Text(
                      "4k",
                      style: TextStyle(color: kColorLigth, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(
                      FontAwesomeIcons.message,
                      color: kColorLigth,
                      size: 35,
                    ),
                    const Text(
                      "1k",
                      style: TextStyle(color: kColorLigth, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FaIcon(
                      FontAwesomeIcons.share,
                      color: kColorLigth,
                      size: 35,
                    ),
                    const Text(
                      "Share",
                      style: TextStyle(color: kColorLigth, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Following",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            //
            TextButton(
              onPressed: () {},
              child: const Text(
                "For You",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
        //IconReusable_on_following(),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "@NameUser",
                        style: TextStyle(color: kColorLigth, fontSize: 18),
                      ),
                      Text(
                        "#tage",
                        style: TextStyle(color: kColorLigth, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
