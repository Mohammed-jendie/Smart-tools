import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Smart Tools", style: TextStyle(color: Colors.white)),
      backgroundColor: const Color.fromARGB(184, 0, 187, 212),
    );
  }
  
  @override
  // TODO: implement preferredSize
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
