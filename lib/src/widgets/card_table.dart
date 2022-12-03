import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      //every table row should have the same ammount of items, at least, empty containers
      children: [
        TableRow(
          children: [
            _SingleCard(
                icon: Icons.pie_chart, text: "Option A", color: Colors.blue),
            _SingleCard(
                icon: Icons.calculate, text: "Option B", color: Colors.purple),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                icon: Icons.subject, text: "Option C", color: Colors.pink),
            _SingleCard(
                icon: Icons.document_scanner,
                text: "Option D",
                color: Colors.brown),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                icon: Icons.shop, text: "Option E", color: Colors.black),
            _SingleCard(
                icon: Icons.search_off, text: "Option F", color: Colors.green),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                icon: Icons.car_rental,
                text: "Option G",
                color: Colors.blueAccent),
            _SingleCard(
                icon: Icons.hotel, text: "Option H", color: Colors.orange),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required IconData this.icon,
      required String this.text,
      required Color this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(icon, size: 35, color: Colors.white),
                radius: 30,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20, color: color),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
