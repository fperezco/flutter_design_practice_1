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
                icon: Icon(Icons.pie_chart, size: 40),
                text: "Option A",
                color: Colors.blue),
            _SingleCard(
                icon: Icon(Icons.calculate, size: 40),
                text: "Option B",
                color: Colors.purple),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                icon: Icon(
                  Icons.subject,
                  size: 40,
                ),
                text: "Option C",
                color: Colors.pink),
            _SingleCard(
                icon: Icon(Icons.document_scanner, size: 40),
                text: "Option D",
                color: Colors.brown),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                icon: Icon(Icons.shop, size: 40),
                text: "Option E",
                color: Colors.black),
            _SingleCard(
                icon: Icon(Icons.search_off, size: 40),
                text: "Option F",
                color: Colors.green),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Icon icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required Icon this.icon,
      required String this.text,
      required Color this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: color,
          child: icon,
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
    );
  }
}
