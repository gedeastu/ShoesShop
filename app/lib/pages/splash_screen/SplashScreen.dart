import 'package:app/layouts/login/LoginLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Login()
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,overlays: SystemUiOverlay.values
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.network("https://lottie.host/9706c92e-ccba-4d3a-8abd-46f21daf421b/V0XPFJgtAb.json",
              controller: _controller,
              onLoaded: (compos){
                _controller
                ..duration = compos.duration
                ..forward();
              }),
              //SvgPicture.asset('assets/union.svg',width: 130,height: 130,)
            ],
          ),
        )
      ),
    );
  }
}