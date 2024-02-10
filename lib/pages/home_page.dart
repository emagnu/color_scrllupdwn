//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'down_page.dart';
import 'up_and_down_page.dart';
import 'up_page.dart';
import 'zebra_page.dart';
// //  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ZebraPage()),
                );
              },
              child: const Text('Zebra'),
            ),
            const SizedBox(height: 10.0),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpAndDownPage()),
                );
              },
              child: const Text('Up&Down'),
            ),
            const SizedBox(height: 10.0),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DownPage()),
                );
              },
              child: const Text('Down'),
            ),
            const SizedBox(height: 10.0),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UpPage()),
                );
              },
              child: const Text('Up'),
            ),
          ],
        ),
      ),
    );
  }
}
