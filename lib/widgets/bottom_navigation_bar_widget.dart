import 'package:bank_application/pages/transations/notification_screen.dart';
import 'package:bank_application/pages/authentication/profile_screen.dart';
import 'package:bank_application/pages/home_page_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const routeName = '/AppBottomNavigationBarScreen';
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  final List _listOfScreens = [
    'Home',
    'Notification',
    'Profile',
  ];
  final List _listOfAssets = [
    Icons.home,
    Icons.notifications_outlined,
    Icons.person_2_outlined,
  ];
  var pages = [
    HomePageScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  final _appPageController = PageController();

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
    _appPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: _appPageController,
          children: pages,
        ),
        bottomNavigationBar: Container(
          width: size.width,
          alignment: Alignment.center,
          height: 65,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              appBarIcon(0),
              appBarIcon(1),
              appBarIcon(2),
              //   appBarIcon(3),
            ],
          ),
        ));
  }

  GestureDetector appBarIcon(int currentIndexs) {
    return GestureDetector(
      onTap: () {
        setBottomBarIndex(currentIndexs);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            _listOfAssets[currentIndexs],
            color: currentIndex == currentIndexs ? Colors.blue : Colors.grey,
          ),
          Text(
            _listOfScreens[currentIndexs],
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: currentIndex == currentIndexs ? Colors.blue : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
