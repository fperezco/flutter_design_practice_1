import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
            margin: const EdgeInsets.only(
              left: 20.0,
              top: 50.0,
              right: 0.0,
              bottom: 0.0,
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Header title & yeah", style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text("subtitle blablbalbal sadfdsf efsdaf ",style: TextStyle(color: Colors.white,fontSize: 20.0))]),
        ),
    );
  }
}