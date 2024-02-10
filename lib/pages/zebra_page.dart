//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
// import 'pages/home_page.dart';
// //  //   ///

class ZebraPage extends StatelessWidget {
  const ZebraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(100, (index) => 'Item $index');

    Widget itemBuilder(BuildContext context, int index) {
      return ListTile(
        title: Text(items[index]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Zebra Page'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: (index % 2 == 0) ? Colors.blue[100] : Colors.blue[300],
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                items[index],
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        },
      ),
    );
  }
}
