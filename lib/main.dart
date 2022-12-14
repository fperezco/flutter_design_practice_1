import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_practice_1/src/screens/basic_page.dart';
import 'package:flutter_design_practice_1/src/screens/grid_page.dart';
import 'package:flutter_design_practice_1/src/screens/scroll_design_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // put the bar in white ( hour, notification bar, etc..)
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // delete the strange white line generated by the blur of icons
      title: 'Designs...',
      initialRoute: 'grid_page',
      routes: {
        'basic_design': (_) =>
            BasicScreen(), //remove context due to not needed..
        'scroll_design': (_) =>
            ScrollDesignPage(), //remove context due to not needed..
        'grid_page': (_) => GridPage(), //remove context due to not needed..
      },
    );
  }
}
