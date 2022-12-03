import 'package:flutter/material.dart';
import 'package:flutter_design_practice_1/src/widgets/customBackground.dart';


class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(),
        ],
      ),
    );
  }
}