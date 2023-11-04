import 'package:flutter/material.dart';
import 'package:group_tabs/views/tabs/tab_detail_page.dart';
import 'package:group_tabs/views/tabs/tab_payment_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabsList extends StatefulWidget {
  const TabsList({super.key});

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
          border: const TableBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              top: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              horizontalInside: BorderSide(color: Colors.black)),
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(2),
            2: FlexColumnWidth(3),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(children: <Widget>[
              Container(
                height: 20,
                alignment: Alignment.center,
                child: const Text("Vancouver",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                alignment: Alignment.center,
                height: 46,
                color: const Color(0xffce5c64),
                child: const Text("-14",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <IconButton>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TabPaymentPage(),
                        ),
                      );
                    },
                    color: const Color(0xffce5c64),
                    icon: Icon(MdiIcons.cash),
                    tooltip: "Pay Tab",
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TabDetailPage(),
                          ),
                        );
                      },
                      color: Colors.lightGreenAccent,
                      icon: Icon(MdiIcons.receiptText),
                      tooltip: "Tab Details")
                ],
              ),
            ]),
            TableRow(children: <Widget>[
              Container(
                height: 20,
                alignment: Alignment.center,
                child: const Text("Vancouver",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                alignment: Alignment.center,
                height: 46,
                color: const Color(0xffce5c64),
                child: const Text("-14",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <IconButton>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TabPaymentPage(),
                        ),
                      );
                    },
                    color: const Color(0xffce5c64),
                    icon: Icon(MdiIcons.cash),
                    tooltip: "Pay Tab",
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TabDetailPage(),
                          ),
                        );
                      },
                      color: Colors.lightGreenAccent,
                      icon: Icon(MdiIcons.receiptText),
                      tooltip: "Tab Details")
                ],
              )
            ])
          ]),
    );
  }
}
