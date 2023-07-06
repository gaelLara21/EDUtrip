import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:edu_trip/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 10000));
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
              "https://assets9.lottiefiles.com/private_files/lf30_TBKozE.json",
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = Duration(milliseconds: 10000)
              ..forward().then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              });
          }),
        ],
      ),
    );
  }
}
