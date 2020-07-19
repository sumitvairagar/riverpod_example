import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/main.dart';

class Settings extends HookWidget {
  const Settings({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var settings = useProvider(settingsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Select Theme"),
                DropdownButton(
                  value: settings.theme,
                  items: [
                    DropdownMenuItem(
                      child: Text("DARK"),
                      value: "DARK",
                    ),
                    DropdownMenuItem(
                      child: Text("LIGHT"),
                      value: "LIGHT",
                    ),
                  ],
                  onChanged: (String value) {
                    settings.setTheme(value);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
