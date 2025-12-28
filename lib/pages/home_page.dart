import 'package:flutter/material.dart';
import 'package:smart_tools/data/gridItems_data.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(width: 230),

      appBar: AppBar(title: Text("Smart tools"), backgroundColor: Colors.cyan),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.9,
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
        color: const Color.fromARGB(255, 99, 99, 99),
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Expanded(child: Icon(item.icon, size: 40))],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Expanded(child: Center(child: Text(item.title)))],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
