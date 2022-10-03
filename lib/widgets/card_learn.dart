import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            elevation: 0,
            color: Colors.white, // temadan verilebilir (mainden)
            margin: ProjectMargins.cardMargin,
            shape: const StadiumBorder(),
            child: SizedBox(
              child: Center(
                child: Text(
                  'Card is here',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                ),
              ),
              height: 100,
              width: 300,
            ),
          ),
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.error,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(20, 10))),
            child: const SizedBox(
              child: Text(
                'Second Card is here',
                style: TextStyle(color: Colors.amber),
              ),
              height: 100,
              width: 100,
            ),
          ),
          _CustomCard(
            child: SizedBox(
              child: Center(
                child: Text(
                  '3rd Card is here',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                ),
              ),
              height: 100,
              width: 300,
            ),
          ),
          Card(
            //default card which customized in main
            child: SizedBox(
              height: 100,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white, // temadan verilebilir (mainden)
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}


// Borders
// Stadium,Circle,RoundedRectangle