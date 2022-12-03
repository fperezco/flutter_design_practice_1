import 'package:flutter/material.dart';
import 'package:flutter_design_practice_1/src/widgets/card_table.dart';
import 'package:flutter_design_practice_1/src/widgets/custom_background.dart';
import 'package:flutter_design_practice_1/src/widgets/custom_bottom_navigation_bar.dart';

import '../widgets/page_title.dart';


class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ],
      )
    );
  }
}
