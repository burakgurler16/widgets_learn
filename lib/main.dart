import 'package:flutter/material.dart';
import 'package:widgets_learn/login_screens/login_screen_ui_1.dart';
import 'package:widgets_learn/widgets/button_learn.dart';
import 'package:widgets_learn/widgets/container_sized_box.dart';
import 'package:widgets_learn/widgets/scaffold_learn.dart';
import 'package:widgets_learn/widgets/text_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Learn',
      theme: ThemeData.dark(),
      home: ButtonLearn(),
    );
  }
}
