import 'package:flutter/material.dart';

class FlexibleExample extends StatefulWidget {
  const FlexibleExample({super.key});

  @override
  State<FlexibleExample> createState() => _FlexibleExampleState();
}

class _FlexibleExampleState extends State<FlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              buildExpanded(),
              buildFlexible(),
            ],
          ),
          Row(
            children: <Widget>[
              buildExpanded(),
              buildExpanded(),
            ],
          ),
          Row(
            children: <Widget>[
              buildFlexible(),
              buildFlexible(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFlexible() {
    return Flexible(
      child: Container(
        color: Colors.green,
        child: Text(
          "Flexible",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }

  Widget buildExpanded() {
    return Expanded(
      child: Container(
        color: Colors.red,
        child: Text(
          "Expanded",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
