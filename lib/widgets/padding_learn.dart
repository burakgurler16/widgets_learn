import 'package:flutter/material.dart';

/// 4. video 30:53
///
/// https://youtu.be/C6G0C7TpffQ?t=1853
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(padding: EdgeInsets.zero, color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
              child: const Text('Burak'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  // Projelerde olması gereken kullanım
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
