import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(children: [
            TextButton(
              onPressed: () {},
              child: const SizedBox(width: 300, height: 50, child: Text('Text Button')),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.black;
                }),
              ),
            ),
            SizedBox(
                width: 300,
                height: 20,
                child: ElevatedButton(
                    onPressed: () {}, child: const SizedBox(height: 100, child: Text('Elevated Button')))),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline_outlined),
              tooltip: 'Icon Button',
              color: Colors.green,
              alignment: Alignment.topRight,
              iconSize: 52,
              highlightColor: Colors.teal,
              splashColor: Colors.amber,
              splashRadius: 100,
            ),
            FloatingActionButton(
                onPressed: () {
                  // servise istek at
                  // sayfanın rengini düzenle
                },
                child: const Icon(Icons.inbox)),
            CloseButton(onPressed: () {}, color: Colors.red),
            // ButtonBar(
            //   alignment: MainAxisAlignment.spaceEvenly,
            //   children: [Text('data'), Text('aaa')],
            // )
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.only(top: 20, left: 100),
                backgroundColor: Colors.amber,
                shape: const CircleBorder(),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text('Custom Inkwell'),
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const SizedBox(width: 100, child: Text('ElevatedButton.icon')),
              ),
            ),
            const FlutterLogo(
              size: 400,
            ),
            Container(
              height: 200,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            const FlutterLogo(size: 100),
          ]),
        ],
      ),
    );
  }
}


/*Borders:
CircleBorder(), RoundedRectangleBorder()
*/
