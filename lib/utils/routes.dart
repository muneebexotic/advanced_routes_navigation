import 'package:advanced_navigation_routing/screen_one.dart';
import 'package:advanced_navigation_routing/screen_two.dart';
import 'package:advanced_navigation_routing/utils/routes_name.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.screenOne:
        return MaterialPageRoute(builder: (context) => ScreenOne());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo(data: settings.arguments as Map,));
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}