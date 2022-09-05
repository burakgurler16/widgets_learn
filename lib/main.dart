import 'package:flutter/material.dart';
import 'package:widgets_learn/login_screens/login_screen_ui_1.dart';
import 'package:widgets_learn/widgets/text_sizedbox.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: TextScaffold(),
    );
  }
}
