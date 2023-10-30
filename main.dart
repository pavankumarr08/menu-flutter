import 'package:flutter/material.dart';

/// Flutter code sample for [AboutListTile].

void main() => runApp(const AboutListTileExampleApp());

class AboutListTileExampleApp extends StatelessWidget {
  const AboutListTileExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AboutListTileExample(),
    );
  }
}

class AboutListTileExample extends StatelessWidget {
  const AboutListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyMedium!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,

                text: "Flutter is Google's UI toolkit for building beautiful, "
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Show About Example'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: AboutListTile(
              icon: const Icon(Icons.info),
             applicationIcon: Container(
              width: 100,
              height: 100,
            alignment: Alignment.center, // Align the child (icon) to the center.
              child: Image.asset("lib/assets/logo.png"),
            ),
              aboutBoxChildren: aboutBoxChildren,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show About Example'),
          onPressed: () {
          showAboutDialog(
              context: context,
              applicationIcon: Padding(
                padding: EdgeInsets.only(right: 32.0), // Adjust the right margin as needed
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center, // Align the child (logo) to the center.
                  child: Image.asset("lib/assets/logo.png"),
                ),
              ),
              children: aboutBoxChildren,
            );
          },
        ),
      ),
    );
  }
}
