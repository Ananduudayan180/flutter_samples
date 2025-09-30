import 'package:flutter/material.dart';
import 'package:flutter_sample/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              logout();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(child: Column(children: [Text('Welcome')])),
    );
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (ctx) {
          return ScreenLogin();
        },
      ),
      (Route<dynamic> route) => false,
    );
  }
}
