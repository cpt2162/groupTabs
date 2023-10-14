import 'package:flutter/material.dart';
import 'package:group_tabs/components/bottom_nav.dart';
import 'package:group_tabs/components/app_search_bar.dart';
import 'package:group_tabs/components/tab_type_toggle.dart';
import 'package:group_tabs/components/tabs_list.dart';

class TabListPage extends StatefulWidget {
  const TabListPage({super.key});

  @override
  State<TabListPage> createState() => _TabListPageState();
}

class _TabListPageState extends State<TabListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Text("groupTabs"),
        ),
        body: Center(
            child: ListView(children: const <Widget>[
          Padding(padding: EdgeInsets.only(top: 8)),
          AppSearchBar(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          TabTypeToggle(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          TabsList(),
        ])),
        bottomNavigationBar: BottomNavBar(key: GlobalKey()),
      ),
    );
  }
}
