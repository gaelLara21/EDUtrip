import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:edu_trip/screens/home_screen.dart';

class ChemistryScreen extends StatefulWidget {
  const ChemistryScreen({super.key});

  @override
  State<ChemistryScreen> createState() => _ChemistryScreenState();
}

class _ChemistryScreenState extends State<ChemistryScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              "https://assets4.lottiefiles.com/packages/lf20_nf1klku4.json",
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = Duration(milliseconds: 3000)
              ..forward().then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeLog()));
              });
          }),
        ],
      ),
    );
  }
}
