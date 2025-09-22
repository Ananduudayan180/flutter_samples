import 'package:bottom_sheet/screen_home.dart';
import 'package:bottom_sheet/screen_profile.dart';
import 'package:bottom_sheet/screen_searcH.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pages = [ScreenHome(), ScreenSearch(), ScreenProfile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Bottom Sheet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context1) {
            return FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                bottomSheet(context1);
              },
              child: Icon(Icons.add, color: Colors.white),
            );
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,

          title: Text('Bottom Sheet', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

void bottomSheet(BuildContext contex1) {
  showModalBottomSheet(
    context: contex1,

    builder: (ctx1) {
      return Container(
        width: double.infinity,
        height: 300,
        color: Colors.white,
        child: ListView(
          children: [
            Text('Bottom Sheet Sample', style: TextStyle(color: Colors.black)),
            IconButton(
              onPressed: () {
                Navigator.of(ctx1).pop();
              },
              icon: Icon(Icons.close, color: Colors.red),
            ),
          ],
        ),
      );
    },
  );
}
