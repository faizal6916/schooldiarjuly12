import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  bool _visible = false;

  _animDuration() async{
    var _duration = Duration(seconds: 3);
    return Timer(_duration, () async {
      setState((){
        _visible = true;
      });
    });
  }
  _navigateToLogin(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animDuration();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            child: Image.asset('assets/images/splash_bg.png',fit: BoxFit.cover,),
          ),
          AnimatedOpacity(
            onEnd: _navigateToLogin,
            duration: Duration(seconds: 2),
            opacity: _visible? 1.0 : 0.0,
            child: Center(
              child: Image(image: AssetImage('assets/images/splash_logo.png'),
              width: 0.5.sw,
              ),
            ),
          ),
        ],
      )
    );
  }
}
