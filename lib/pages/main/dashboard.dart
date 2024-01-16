import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:presence_app/pages/main/feature/feature.dart';
import 'package:presence_app/pages/main/home/home.dart';
import 'package:presence_app/pages/main/profile/profile.dart';
import 'package:presence_app/utils/constants/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages = [
    const Home(),
    const Feature(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: kgreyMedium, blurRadius: 5),
          ],
        ),
        child: Theme(
          data: ThemeData(useMaterial3: false),
          child: BottomNavigationBar(
            onTap: onItemTapped,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            unselectedItemColor: kdeepGrey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_12_regular),
                activeIcon: Icon(FluentIcons.home_12_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentIcons.board_24_regular),
                activeIcon: Icon(FluentIcons.board_24_filled),
                label: 'Features',
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_20_regular),
                activeIcon: Icon(FluentIcons.person_20_filled),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
