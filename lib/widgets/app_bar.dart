import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        //
        // centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0,

        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // --------- Bu kısım mainde theme kısmında oluşturuldu ve tüm appBarlar için geçerli
        toolbarTextStyle: TextStyle(color: Colors.amber), //actions kısmına text atarsak amber rengini görürüz
        leadingWidth: 23,
        automaticallyImplyLeading: false, //back button false (navigation ile gelen)
        actionsIconTheme: IconThemeData(color: Colors.black, size: 48),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.list_outlined)),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
