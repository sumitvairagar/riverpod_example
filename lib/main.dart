import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/app.dart';
import 'package:riverpod_example/provider/settings_provider.dart';
import 'package:riverpod_example/service/firestore_service.dart';

final settingsProvider = ChangeNotifierProvider((_) => SettingsProvider());
final courseListProvider =
    StreamProvider((_) => FireStoreService().getCourses());

void main() {
  runApp(ProviderScope(child: MyApp()));
}
