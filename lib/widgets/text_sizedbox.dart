import 'package:flutter/material.dart';

class TextScaffold extends StatelessWidget {
  const TextScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Buy the best one' * 10,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
          wordSpacing: 2,
          letterSpacing: 3,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
