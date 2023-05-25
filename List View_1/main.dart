import 'package:flutter/material.dart';
import 'package:listview_1/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J'
    ];
    final List<int> colorCodes = <int>[
      900,
      800,
      700,
      600,
      500,
      400,
      300,
      200,
      100,
      90
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hello List")),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10.0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Homepage(),
              ),);
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
      ),
    );
  }
}
