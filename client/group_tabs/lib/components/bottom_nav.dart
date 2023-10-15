import 'package:flutter/material.dart';
import 'package:group_tabs/views/new_tab/title_page.dart';
import 'package:group_tabs/views/tabs/tab_list_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TabListPage(key: GlobalKey()),
          ));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TitlePage(key: GlobalKey()),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TabListPage(key: GlobalKey()),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: "Tabs",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create),
          label: "Create New",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
      selectedItemColor: Colors.lightGreenAccent,
      currentIndex: _selectedPage,
      onTap: _onItemTapped,
    );
  }
}
