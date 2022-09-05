import 'package:flutter/material.dart';
import 'package:widgets_learn/widgets/container_sized_box.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples'),
      ),
      //  AppBar End// //
      body: const Text('Body is here'),
      // Body End //
      backgroundColor: Colors.red[200],
      ////
      ///
      ///
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.black,
        backgroundColor: Colors.green,
        hoverElevation: 10,
        splashColor: Colors.amber,
        elevation: 15.0,
        tooltip: ' Bottom Sheet Open',
        child: const Icon(Icons.arrow_circle_up_outlined),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      // Floating Action Button End // //
      drawer: const Drawer(),
      // Drawer End ////

      //  ///////////////////////
      //   bottomSheet: BottomSheet(
      //     builder: (context) {
      //       return const Text('bottom sheet builder return');
      //     },
      //     onClosing: () {},
      //   ),
      //   // Bottom Sheet End ////
      //   // Hata veriyor o yüzden kapatıldı
      //   //////////////////////
      //   ///
      ///

      bottomNavigationBar: Container(
        decoration: ProjectContainerDecoration(),
        height: 200,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'LeaderBoard',
            activeIcon: Text('Aktif Iconnnnnnnnn'),
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.power_settings_new_sharp), label: 'Power', tooltip: 'Power On/Off'),
        ]),
      ),
      // Bottom Navigator Bar End ////
    );
  }
}
