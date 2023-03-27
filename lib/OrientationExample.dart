import 'package:flutter/material.dart';

class OrientationExample extends StatefulWidget {
  const OrientationExample({super.key});

  @override
  State<OrientationExample> createState() => _OrientationExampleState();
}

class _OrientationExampleState extends State<OrientationExample> {
  @override
  Widget build(BuildContext context) {
    //final media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Text(orientation.toString()),
          );
        },
      ),
    );
  }
}
