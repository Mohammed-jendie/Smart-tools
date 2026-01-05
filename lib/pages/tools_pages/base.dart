import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  const Base({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bases",textAlign: TextAlign.start, style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Input"),
          Text("Decimal - Base 10"),
          Text("input"),
          Text("Binary - Base 2"),
          TextButton(onPressed: (){}, child: Text("submit"))
        ],
      ),
    );
  }
}

Widget option() {
  return Column(
    children: [
      TextButton(onPressed: () {}, child: Text("Decimal - Base 10")),
      TextButton(onPressed: () {}, child: Text("Binary - Base 2")),
      TextButton(onPressed: () {}, child: Text("Octal - Base 8")),
      TextButton(onPressed: () {}, child: Text("Hexadecimal - Base 16"))
    ],
  );
}