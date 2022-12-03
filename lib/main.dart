import 'package:flutter/material.dart';
import 'package:flutter_design_practice_1/src/screens/basic_page.dart';
import 'package:flutter_design_practice_1/src/screens/scroll_design_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs...',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design': (_) => BasicScreen(), //remove context due to not needed..
        'scroll_design': (_) => ScrollDesignPage(), //remove context due to not needed..
      },
    );
  }
}
