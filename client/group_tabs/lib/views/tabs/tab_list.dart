import 'package:flutter/material.dart';

class TabList extends StatelessWidget {
  const TabList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Text("groupTabs"),
        ),
        body: Center(
          child: Container(
            child: const Text('Hi Mom'),
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(10),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.abc),
          onPressed: () => print('pressed'),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
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
        ]),
      ),
    );
  }
}
