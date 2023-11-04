import 'package:flutter/material.dart';

class AddPeople extends StatefulWidget {
  const AddPeople(this.title, {super.key});

  final String title;

  @override
  State<AddPeople> createState() => _AddPeopleState();
}

class _AddPeopleState extends State<AddPeople> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];
  Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedItems.contains(item);

                return ListTile(
                  title: const Text("item"),
                  leading: const Icon(Icons.person),
                  trailing: Checkbox(
                    value: isSelected,
                    onChanged: (bool? val) {
                      setState(() {
                        if (val!) {
                          selectedItems.add(item);
                        } else {
                          selectedItems.remove(item);
                        }
                      });
                    },
                  ),
                );
              })),
    );
  }
}
