import 'package:flutter/material.dart';

class TabTypeToggle extends StatefulWidget {
  const TabTypeToggle({super.key});

  @override
  State<TabTypeToggle> createState() => _TabTypeToggleState();
}

class _TabTypeToggleState extends State<TabTypeToggle> {
  Color selectedColor = Colors.lightGreenAccent;
  Color defaultColor = Colors.black;
  int selected = 0;
  Color all = Colors.black;
  Color open = Colors.black;
  Color closed = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                all = selectedColor;
                open = defaultColor;
                closed = defaultColor;
              },
              child: Text("All", style: TextStyle(color: all)),
            ),
            GestureDetector(
                onTap: () {
                  open = selectedColor;
                  all = defaultColor;
                  closed = defaultColor;
                },
                child: Text("Open", style: TextStyle(color: open))),
            GestureDetector(
                onTap: () {
                  closed = selectedColor;
                  open = defaultColor;
                  closed = defaultColor;
                },
                child: Text("Closed", style: TextStyle(color: closed)))
          ],
        ),
      ),
    );
  }
}
