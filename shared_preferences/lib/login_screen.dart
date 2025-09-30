import 'package:flutter/material.dart';
import 'package:flutter_sample/screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_sample/main.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool passTrueOrFalse = false;
  final validation = GlobalKey<FormState>();
  final userNameValue = TextEditingController();

  final passwordValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: validation,
            child: Column(
              children: [
                TextFormField(
                  controller: userNameValue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text('Username'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Value is empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordValue,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text('Password'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Value is empty';
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: passTrueOrFalse,
                      child: Text(
                        'Enter Equal values',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (validation.currentState!.validate()) {
                          passCheck();
                        } else {}
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void passCheck() {
    if (userNameValue.text == passwordValue.text) {
      addLoginValue();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return ScreenOne();
          },
        ),
      );
    } else {
      setState(() {
        passTrueOrFalse = true;
      });
    }
  }

  Future<void> addLoginValue() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(trueOrFalse, true);
  }
}
