import 'package:flutter/material.dart';
import 'package:flutter_sample/login_screen.dart';
import 'package:flutter_sample/screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_sample/main.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    initialLoginCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset('lib/images/splashScreenss.png', height: 500),
        ),
      ),
    );
  }

  Future<void> initialLoginCheck() async {
    final keys = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    final checkingValue = keys.getBool(trueOrFalse);

    if (checkingValue == false || checkingValue == null) {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return ScreenLogin();
          },
        ),
      );
    } else {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return ScreenOne();
          },
        ),
      );
    }
  }
}
