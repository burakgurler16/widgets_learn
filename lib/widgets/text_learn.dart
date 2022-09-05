// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextScaffold extends StatelessWidget {
  const TextScaffold({
    Key? key,
    this.userName,
  }) : super(key: key);

  final String name = 'Burak';

  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              textScaleFactor: 1.5,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor), //doğru kullanım bu
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              textScaleFactor: 1.5,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(userName ?? ''),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    color: Colors.red,
    decoration: TextDecoration.lineThrough,
    fontStyle: FontStyle.italic,
    wordSpacing: 2,
    letterSpacing: 3,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.blue;
}
