import 'package:flutter/material.dart';
import 'package:group_tabs/components/bottom_nav.dart';
import 'package:group_tabs/views/new_tab/add_people_page.dart';

class TitlePage extends StatefulWidget {
  const TitlePage({super.key});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text("groupTabs"),
      ),
      body: const Center(
          child: Padding(padding: EdgeInsets.all(8), child: TitleForm())),
      bottomNavigationBar: BottomNavBar(key: GlobalKey()),
    );
  }
}

class TitleForm extends StatefulWidget {
  const TitleForm({super.key});

  @override
  State<TitleForm> createState() => _TitleFormState();
}

class _TitleFormState extends State<TitleForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter a tab title',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Optionally add a decription',
              ),
            ),
            InputDatePickerFormField(
                firstDate: DateTime.now(),
                lastDate: (DateTime(date.year + 1, date.month, date.day))),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('submitted');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const AddPeoplePage()));
                  }
                },
                child: const Text("Submit"))
          ],
        ));
  }
}
