import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116,117,152,1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      showSelectedLabels: false, //to hide labels
      showUnselectedLabels: false,
      currentIndex: 0, //item selected by default
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Calendar"
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: "Graphic"
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Other"
            ),

        ]);
  }
}
