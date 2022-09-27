import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);
  final text2 = 'bu 1';
  final text3 = 'bu 2';
  final text4 = 'bu 4';
  final text5 = 'bu 3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          _emptyBox(),
          TitleTextWidget(text: text3),
          _emptyBox(),
          _emptyBox(),
          _emptyBox(),
          TitleTextWidget(text: text5),
          TitleTextWidget(text: text4),
          const _CustomContainer(),
          _emptyBox()
        ],
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
