import 'package:flutter/material.dart';

class Carrusel extends StatefulWidget {
  const Carrusel({super.key});

  @override
  State<Carrusel> createState() => _Carrusel();
}

class _Carrusel extends State<Carrusel> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    List<Widget> reel = [
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen10.jpg')))),
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen12.jpg')))),
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen13.jpg')))),
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen14.jpg')))),
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen15.jpg')))),
      Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('img/imagen16.jpg')))),
    ];
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: reel,
          controller: controller,
        ),
      ),
    );
  }
}
