import 'package:flutter/material.dart';
import 'package:task/modelclass/modelclass.dart';

class EmpTile extends StatelessWidget {
  final ModelClass emp;

  EmpTile(this.emp);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(emp.profileImage.toString()),
      ),
      title: Text(emp.name),
      subtitle: Text(emp.email),
    );
  }
}
