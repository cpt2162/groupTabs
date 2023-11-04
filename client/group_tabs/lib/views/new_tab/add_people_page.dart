import 'package:flutter/material.dart';
import 'package:group_tabs/components/add_people.dart';
import 'package:group_tabs/components/bottom_nav.dart';

class AddPeoplePage extends StatelessWidget {
  const AddPeoplePage(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(title),
      ),
      body: Center(
          child: Expanded(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: AddPeople(title, key: GlobalKey())),
      )),
      bottomNavigationBar: BottomNavBar(1, key: GlobalKey()),
    );
  }
}
