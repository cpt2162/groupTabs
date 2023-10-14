import 'package:flutter/material.dart';
import 'package:group_tabs/views/sign_in.dart';
import 'package:group_tabs/views/tabs/tab_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Text("groupTabs"),
        ),
        body: Builder(builder: (context) {
          return ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(key: GlobalKey()),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
