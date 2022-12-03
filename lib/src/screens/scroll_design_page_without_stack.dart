import 'package:flutter/material.dart';

class ScrollDesignPageWithoutStack extends StatelessWidget {
  const ScrollDesignPageWithoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    const backgroundImage = BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 0.0,
          top: 50.0,
          right: 0.0,
          bottom: 15.0,
        ),
        decoration: backgroundImage,
        child: const MainColumnContent(),
      ),
    );
  }
}

class MainColumnContent extends StatelessWidget {
  const MainColumnContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("11º",
              style: TextStyle(
                  color: Colors.white, fontSize: _screenSize.height * 0.07)),
          Text("Wednesday",
              style: TextStyle(
                  color: Colors.white, fontSize: _screenSize.height * 0.07)),
          Expanded(child: Container()),
          Icon(
            Icons.arrow_circle_down,
            size: _screenSize.height * 0.1,
            color: Colors.white,
          )
        ]);
  }
}
