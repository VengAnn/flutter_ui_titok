import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/Constant.dart';

// ignore: camel_case_types
class news_feedScreen extends StatefulWidget {
  const news_feedScreen({super.key});

  @override
  State<news_feedScreen> createState() => _news_feedScreenState();
}

// ignore: camel_case_types
class _news_feedScreenState extends State<news_feedScreen> {
  final PageController _followingPageController = PageController();
  final PageController _forYouPage = PageController();
  int _selectedTabIndex = 1; // Set to 1 for "For You" as the default tab

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            child: Stack(
              children: [
                if (_selectedTabIndex == 0)
                  _buildFollowingPage()
                else
                  _buildForYouPage(),
                //
                //for button for you and following use pagveiw animateTopage
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(
                          () {
                            _selectedTabIndex = 0;
                            // _followingPageController.animateToPage(
                            //   _selectedTabIndex,
                            //   duration: const Duration(milliseconds: 500),
                            //   curve: Curves.linear,
                            // );
                          },
                        );
                      },
                      child: Text(
                        "Following",
                        style: TextStyle(
                            color: _selectedTabIndex == 0
                                ? Colors.black
                                : Colors.grey), // Note the change here
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedTabIndex = 1;
                          // _forYouPage.jumpToPage(
                          //   _selectedTabIndex,
                          //   // duration: const Duration(milliseconds: 500),
                          //   // curve: Curves.slowMiddle,
                          // );
                        });
                      },
                      child: Text(
                        "For You",
                        style: TextStyle(
                            color: _selectedTabIndex == 1
                                ? Colors.black
                                : Colors.grey), // Note the change here
                      ),
                    ),
                  ],
                ),

                //
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
                                style:
                                    TextStyle(color: kColorLigth, fontSize: 18),
                              ),
                              Text(
                                "#tage",
                                style:
                                    TextStyle(color: kColorLigth, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //
  Widget _buildForYouPage() {
    return SizedBox(
      //height: double.maxFinite,
      child: PageView.builder(
        controller: _forYouPage,
        // onPageChanged: (value) {
        //   setState(() {
        //     _selectedTabIndex = value;
        //   });
        // },
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
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                style:
                                    TextStyle(color: kColorLigth, fontSize: 14),
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
                                style:
                                    TextStyle(color: kColorLigth, fontSize: 14),
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
                                style:
                                    TextStyle(color: kColorLigth, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //one more widget for following page
  Widget _buildFollowingPage() {
    return SizedBox(
      height: double.maxFinite,
      child: PageView.builder(
        controller: _followingPageController,
        // onPageChanged: (value) {
        //   setState(() {
        //     _selectedTabIndex = value;
        //   });
        // },
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
        },
      ),
    );
  }
}
