import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBOX'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a ' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            // height: 50, // gerek yok aşağıda verildi
            // color: Colors.red, //--- BoxDecorationda color verildiği için burada color tanımlamasında program hata verir,
            child: Text(
              'aa' * 100,
              maxLines: 2,
            ),
            constraints: const BoxConstraints(
              maxWidth: 300,
              minWidth: 100,
              minHeight: 10,
              maxHeight: 120,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.green, // gradient olduğu için burası etkisiz
      gradient: const LinearGradient(colors: [Colors.red, Colors.amber, Colors.blue]),
      // shape: BoxShape.circle,
      border: Border.all(
        width: 10,
        color: Colors.purple,
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.1, 5),
        ),
      ]);
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green, // gradient olduğu için burası etkisiz
            gradient: const LinearGradient(colors: [Colors.red, Colors.amber, Colors.blue]),
            // shape: BoxShape.circle,//
            border: Border.all(
              width: 5,
              color: Colors.purple,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.1, 5),
              )
            ]);
}
