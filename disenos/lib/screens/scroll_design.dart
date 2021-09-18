import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff5EE8C5), Color(0xff30BAD6)])),
        child: PageView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [PageUno(), PageDos()]),
      ),
    );
  }
}

class PageDos extends StatelessWidget {
  const PageDos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            print('Botón presionado');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.green, shape: StadiumBorder()),
        ),
      ),
    );
  }
}

class PageUno extends StatelessWidget {
  const PageUno({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BackGround(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          //Todo expandido
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
          ),
        ],
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}
