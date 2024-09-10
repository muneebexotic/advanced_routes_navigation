import 'package:advanced_navigation_routing/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  //static const String id = 'screen_two';
  dynamic data;
  ScreenTwo({super.key, required this.data});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    //final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two'), centerTitle: true, backgroundColor: Colors.greenAccent,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  height: 40,
                  width: 200,
                  child: Center(child: Text(
                    widget.data['Name']
                      //arguments['button_name']
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
