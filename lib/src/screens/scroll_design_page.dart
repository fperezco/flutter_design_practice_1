import 'package:flutter/material.dart';

class ScrollDesignPage extends StatelessWidget {
  const ScrollDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical, //scroll direction
        children: [Page1(), Page2()],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), MainColumnContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: double.infinity,
        margin: const EdgeInsets.all(0.0),
        child: const Image(
            image: AssetImage("assets/scroll-1.png"),
            width: double.infinity,
            fit: BoxFit.fill));
  }
}

class MainColumnContent extends StatelessWidget {
  const MainColumnContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customTextStyle =
        TextStyle(color: Colors.white, fontSize: screenSize.height * 0.07);

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          left: 0.0,
          top: 50.0,
          right: 0.0,
          bottom: 15.0,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("11º", style: customTextStyle),
              Text("Wednesday", style: customTextStyle),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_circle_down,
                size: screenSize.height * 0.1,
                color: Colors.white,
              )
            ]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              padding: const EdgeInsets.all(20.0),
              shape: const StadiumBorder()),
          onPressed: null,
          child: const Text(
            "Bienvenido",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
