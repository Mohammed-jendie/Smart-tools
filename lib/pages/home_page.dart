import 'package:flutter/material.dart';
import 'package:smart_tools/data/gridItems_data.dart';
import 'package:smart_tools/widget/appBar_widget.dart';
import 'package:smart_tools/widget/drawer_widget.dart';

class MyHome extends StatelessWidget {
  //const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),

      appBar: const MyAppBar(),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.05,
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
        color: const Color.fromARGB(153, 69, 69, 69),
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
