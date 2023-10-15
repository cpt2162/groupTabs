import 'package:flutter/material.dart';

class TabTypeToggle extends StatefulWidget {
  const TabTypeToggle({super.key});

  @override
  State<TabTypeToggle> createState() => _TabTypeToggleState();
}

class _TabTypeToggleState extends State<TabTypeToggle> {
  ButtonStyle defaultstyle =
      const ButtonStyle(backgroundColor: MaterialStatePropertyAll(null));
  int selected = 0;
  ButtonStyle selectedstyle = const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.lightGreenAccent));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: (selected == 0) ? selectedstyle : defaultstyle,
                onPressed: () {
                  setState(() {
                    selected = 0;
                  });
                },
                child: const Text(
                  "All",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                  style: (selected == 1) ? selectedstyle : defaultstyle,
                  onPressed: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  child: const Text("Open",
                      style: TextStyle(color: Colors.black))),
              TextButton(
                  style: (selected == 2) ? selectedstyle : defaultstyle,
                  onPressed: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  child: const Text(
                    "Closed",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
