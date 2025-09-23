import 'package:flutter/material.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(title: Text('name'), subtitle: Text('age'));
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 30,
    );
  }
}
