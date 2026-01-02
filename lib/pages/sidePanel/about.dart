import 'package:flutter/material.dart';
import 'package:smart_tools/pages/home_page.dart';

class About extends StatelessWidget {
  //const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/img/app_icon.png")),
          Text("Smart Tools"),
          Text("made by Mohammad and Davin"),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHome()));
          }, child: Text("Back"))
        ],
      ),
    );
  }
}