//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
// import 'pages/home_page.dart';
// //  //   ///

class UpPage extends StatefulWidget {
  const UpPage({super.key});

  @override
  State<UpPage> createState() => _UpPageState();
}

class _UpPageState extends State<UpPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(100, (index) => 'Item $index');
    final ScrollController controller = ScrollController();

    // void scrollDown() {
    //   debugPrint('Inside scrollDown()');
    //   final double goDown = controller.position.maxScrollExtent;
    //   controller.animateTo(goDown,
    //       duration: const Duration(seconds: 2), curve: Curves.easeInCirc);
    // }

    void scrollUp() {
      debugPrint('Inside scroll(up)');
      const double goUp = 0;
      controller.animateTo(goUp,
          duration: const Duration(seconds: 2), curve: Curves.easeInCirc);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Up & Down Page'),
      ),
      body: ListView.builder(
        controller: ScrollController(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: scrollUp,
        child: const Icon(
          Icons.arrow_circle_up,
          size: 35.0,
        ),
      ),
    );
  }
}
