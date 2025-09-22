import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final items = ['Apple', 'Orange', 'Mango'];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              hint: Text('Select a fruit'),
              initialValue: selectedItem,
              items: items.map((fruits) {
                return DropdownMenuItem(value: fruits, child: Text(fruits));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
