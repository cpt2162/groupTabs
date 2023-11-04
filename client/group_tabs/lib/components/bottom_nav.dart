import 'package:flutter/material.dart';
import 'package:group_tabs/views/new_tab/title_page.dart';
import 'package:group_tabs/views/tabs/tab_list_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(this.selectedPage, {super.key});

  final int selectedPage;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _onItemTapped(int index) {
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
      currentIndex: widget.selectedPage,
      onTap: _onItemTapped,
    );
  }
}
