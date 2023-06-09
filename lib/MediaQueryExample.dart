import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  const MediaQueryExample({super.key});

  @override
  State<MediaQueryExample> createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: media.width < 600
          ? const Drawer(
              child: Menu(),
            )
          : null,
      body: Row(children: <Widget>[
        media.width > 600
            ? const Flexible(flex: 1, child: Menu())
            : Container(),
        Flexible(
          flex: 3,
          child: Center(
            child: Text(
              "Size ${media.width.floor()} * ${media.height.floor()}",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        )
      ]),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          color: Colors.green,
          child: Center(child: Text("Raouf Rahiche")),
        ),
        ListTile(
          title: const Text("Home"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Profile"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Calls"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Messages"),
          onTap: () {},
        ),
      ],
    );
  }
}
