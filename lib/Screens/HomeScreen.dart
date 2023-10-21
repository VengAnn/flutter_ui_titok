import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/constant.dart';
import 'news_feed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  int SelectedIndex = 0;

  static List<Widget> widgetContainer = [
    news_feedScreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.deepPurple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: widgetContainer.elementAt(SelectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        currentIndex: SelectedIndex,
        onTap: (value) {
          setState(() {
            SelectedIndex = value;
            print(SelectedIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: kSecondaryColor,
              ),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: kSecondaryColor,
              ),
              label: "Discover"),
          BottomNavigationBarItem(
              icon: Stack(
                // clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(left: 17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                      color: kColorLigth,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      CupertinoIcons.plus,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: kSecondaryColor,
              ),
              label: "Inbox"),
          const BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.profile_circled,
                color: kSecondaryColor,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
