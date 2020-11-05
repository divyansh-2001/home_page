import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsut_daily_app/screens/attendance_screen.dart';
import 'package:nsut_daily_app/screens/notices_screen.dart';
import 'package:nsut_daily_app/screens/todo_screen.dart';
import 'constants.dart';
import 'package:nsut_daily_app/screens/Home_Page.dart';

class NavBarClass extends StatefulWidget {
  @override
  _NavBarClassState createState() => _NavBarClassState();
}

class _NavBarClassState extends State<NavBarClass> {
  var _bottomNavIndex = 0;
  PageController _pageController;

  final iconList = <IconData>[
    Icons.home,
    Icons.assignment,
    Icons.source,
    Icons.sticky_note_2
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _bottomNavIndex = index);
          },
          children: [
            //App Screens
            //Order:

            homePage(), //Home screen
            Attendance(), //Attendance screen
            ToDoClass(), //To-do screen
            NoticesScreen(), //notices screen
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF000001),
          unselectedItemColor: Color(0xFFFFFFFF),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'To-Do',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.source),
              label: 'Notices',
            ),
          ],
          currentIndex: _bottomNavIndex,
          selectedItemColor: kSecondaryColor,
          onTap: (index) {
            setState(() => _bottomNavIndex = index);
            _pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
