import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}

class myhome extends StatelessWidget {
  const myhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(width: 200),
    
      appBar: AppBar(
        title: Text("Smart tools"),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
