import 'package:flutter/material.dart';
import 'package:taskweek3/alert.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Alert Dialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Alert();
              },
            );
          },
          child: Text('delete'),
        ),
      ),
    );
  }
}
