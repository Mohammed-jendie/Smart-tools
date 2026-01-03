import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smart_tools/pages/drawer_pages/about.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      elevation: 10,
      shadowColor: Colors.cyan,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(padding: EdgeInsetsGeometry.all(10.0)),
          Row(
            children: [
              Image(image: AssetImage("assets/img/app_icon.png")),
              SizedBox(width: 10),
              Column(children: [Text("Smart Tools"), Text("Version: 1.0")]),
            ],
          ),
          SizedBox(height: 5),
          Divider(),
          Row(
            children: [
              Icon(FontAwesomeIcons.circleInfo),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => About()));
                },
                child: Text("About Us"),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(FontAwesomeIcons.message),
              SizedBox(width: 10),
              TextButton(onPressed: () {}, child: Text("Feedback")),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(FontAwesomeIcons.share),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  SharePlus.instance.share(
                    ShareParams(
                      text:
                          'Let\'s check our Smart Tools app on Playstore (link)',
                    ),
                  );
                },
                child: Text("Share"),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(FontAwesomeIcons.language),
              SizedBox(width: 10),
              TextButton(onPressed: () {}, child: Text("Language")),
            ],
          ),
        ],
      ),
    );
  }
}
