import 'package:advanced_navigation_routing/screen_two.dart';
import 'package:advanced_navigation_routing/utils/routes_name.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  //static const String id = 'screen_one';
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                    'Name' : 'Jason',
                  });
                  // Navigator.pushNamed(context, ScreenTwo.id, arguments: {
                  //   'button_name' : 'Muneeb'
                  // });
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ScreenTwo(
                  //               label: 'Updated',
                  //             )));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent,
                  ),
                  height: 40,
                  width: 200,
                  child: const Center(child: Text('Click me')),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
