import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final _description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

    return Scaffold(
      body: Column(children: [
        TopImage(),
        SiteTitleAndRating(),
        ActionsMenu(),
        DescriptionText(),
      ]),
    );
  }

}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      width: screenSize.width * 0.9,
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ActionsMenu extends StatelessWidget {
  const ActionsMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      width: screenSize.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.call,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("CALL", style: Theme.of(context).textTheme.subtitle1),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          Column(
            children: [
              Icon(
                Icons.gps_fixed,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("ROUTE", style: Theme.of(context).textTheme.subtitle1),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("SHARE", style: Theme.of(context).textTheme.subtitle1),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

class SiteTitleAndRating extends StatelessWidget {
  const SiteTitleAndRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("Walk over the country",
                  style: Theme.of(context).textTheme.headline6),
              Text("Barbate, Spain",
                  style: Theme.of(context).textTheme.subtitle1),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Text("41"),
            ],
          )
        ],
      ),
    );
  }
}

class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.3,
      child: Image(
        image: AssetImage('assets/landscape.jpg'),
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
