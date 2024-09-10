import 'package:advanced_navigation_routing/screen_one.dart';
import 'package:advanced_navigation_routing/screen_two.dart';
import 'package:advanced_navigation_routing/utils/routes.dart';
import 'package:advanced_navigation_routing/utils/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenOne(),
     // initialRoute: ScreenOne.id,
      // routes: {
      //   ScreenOne.id: (context) => ScreenOne(),
      //   ScreenTwo.id: (context) => ScreenTwo()
      // },
      initialRoute: RouteName.screenOne,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
