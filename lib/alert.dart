


import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Alert'),
      content: const Text('Are you sure you want to proceed?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('cancel')),

        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Ok')),
      ],
    );
  }
}