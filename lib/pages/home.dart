import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/model/course.dart';
import 'package:riverpod_example/pages/settings.dart';

import '../main.dart';

class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var settings = useProvider(settingsProvider);
    var courses = useProvider(courseListProvider).data;
    var theme = settings.theme; // Theme can be used later.
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () => {
              Navigator.pushNamed(context, "/settings"),
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: courses.value.length,
        itemBuilder: (BuildContext context, int index) {
          Course course = courses.value[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.description),
          );
        },
      ),
    );
  }
}
