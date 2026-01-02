import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smart_tools/data/gridItems_data.dart';
import 'package:smart_tools/pages/sidePanel/about.dart';

class MyHome extends StatelessWidget {
  //const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),

      appBar: AppBar(
        title: Text("Smart Tools", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(184, 0, 187, 212),
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          final item = gridItems[index];
          return boxes(item, context);
        },
      ),
    );
  }
}

Widget boxes(GridItem item, context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return item.page;
          },
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(208, 69, 69, 69),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color.fromARGB(255, 111, 111, 111)),
      ),
      margin: EdgeInsets.all(6),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Icon(item.icon, size: 40, color: Colors.amber),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        item.title,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
