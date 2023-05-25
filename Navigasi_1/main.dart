import 'package:flutter/material.dart';
import 'package:navigasi_1/page2.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Login Page";
  var body = "Ini isi Body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text("Loan"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyWidget(
                          parameter: "A",
                        )));
              },
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text("Return"),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Center(child: Text(judul))),
      floatingActionButton: FloatingActionButton(onPressed: () {
        /*setState(
          () {
            judul = "Ini Judul yang Berubah";
            body = "Ini adalah Body yang Berubah";
          },
        );*/

        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const MyWidget(
                  parameter: "A",
                )));
      }),
      body: Text(body),
    );
  }
}
