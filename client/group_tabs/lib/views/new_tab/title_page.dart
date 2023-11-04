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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: SizedBox(
                height: 40,
                width: 300,
                child: Text(
                  "Create a New Tab",
                  style: TextStyle(fontSize: 38),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8), child: TitleForm()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(1, key: GlobalKey()),
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
  String _title = '';
  String _description = '';
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a tab title',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) => _title = value!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Optionally add a decription',
                ),
                onSaved: (value) => _description = value!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: InputDatePickerFormField(
                      firstDate: DateTime.now(),
                      lastDate: (DateTime(date.year + 1, date.month, date.day)),
                      fieldLabelText: 'Start Date',
                      fieldHintText: 'Enter the date the tab shall start',
                      onDateSaved: (value) => _startDate = value,
                    ),
                  ),
                  Flexible(
                      child: InputDatePickerFormField(
                    firstDate: DateTime.now(),
                    lastDate: (DateTime(date.year + 1, date.month, date.day)),
                    fieldLabelText: 'End Date',
                    fieldHintText:
                        'Optionally enter the date the tab shall close',
                    acceptEmptyDate: true,
                    onDateSaved: (value) => _endDate = value,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    AddPeoplePage(_title, key: GlobalKey())));
                      }
                    },
                    child: const Text("Next")),
              ),
            )
          ],
        ));
  }
}
