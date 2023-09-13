import 'package:flutter/material.dart';
import 'package:weightstracker/theme/projectcolor.dart';
import 'package:weightstracker/ui/ui_screens/home_page.dart';
import 'package:weightstracker/ui/ui_screens/profile_page.dart';
import 'package:weightstracker/ui/ui_screens/programs_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    // Home Page
    const HomePage(),
    // Programs Page
    const ProgramsPage(),
    // Profile Page
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          backgroundColor: ProjectColor().darkGrey,
          selectedItemColor: ProjectColor().white,
          unselectedItemColor: ProjectColor().lightGrey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Programs'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
    );
  }
}