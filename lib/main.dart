import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasirku/src/core/data/objectbox.dart';
import 'src/my_app.dart';
import 'package:kasirku/objectbox.g.dart';

late Store store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  store = (await ObjectBox.create()).store;
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
