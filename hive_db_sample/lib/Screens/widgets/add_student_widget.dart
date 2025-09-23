import 'package:flutter/material.dart';

class AddStudentWidget extends StatelessWidget {
  final nameTextController = TextEditingController();
  final ageTextController = TextEditingController();
  AddStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameTextController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hint: Text('Name'),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: ageTextController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hint: Text('Age'),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text('Add')),
      ],
    );
  }
}
