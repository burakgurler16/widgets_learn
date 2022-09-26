import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_learn/login_screens/login_screen_ui_1.dart';
import 'package:widgets_learn/widgets/app_bar.dart';
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
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      )),
      home: const AppBarLearnView(),
    );
  }
}
