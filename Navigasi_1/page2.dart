import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigasi_1/main.dart';

class MyWidget extends StatelessWidget {
  final String parameter;
  const MyWidget({super.key, required this.parameter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("2nd Page")),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Login Successful"),
            Text(this.parameter),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
