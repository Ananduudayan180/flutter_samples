import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/images/businessman-png.webp'),
              ),
              Text(
                'Anandu Udayan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  // fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.white70,
                  fontFamily: 'TASAExplorer',
                ),
              ),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(color: Colors.deepPurple.shade100),
              ),
              Card(
                margin: EdgeInsets.all(15),

                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepPurple),
                  title: Text(
                    '9725460000',
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w900,
                      fontFamily: 'TASAExplorer',
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),

                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.deepPurple),
                  title: Text(
                    'businesscard19@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w900,
                      fontFamily: 'TASAExplorer',
                      // fontFamily: 'SourceSans',
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
