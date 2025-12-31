import 'package:flutter/material.dart';
import 'package:smart_tools/data/gridItems_data.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(width: 230, elevation: 10, shadowColor: Colors.cyan),

      appBar: AppBar(
        title: Text("Smart Tools", style: TextStyle(color: Colors.black)),
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
                    child: Icon(item.icon, size: 40, color: item.iconColor),
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
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
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
