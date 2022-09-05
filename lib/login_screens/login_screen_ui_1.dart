import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class LoginView1 extends StatefulWidget {
  const LoginView1({Key? key}) : super(key: key);

  @override
  State<LoginView1> createState() => _LoginView1State();
}

class _LoginView1State extends State<LoginView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Stack(
                children: <Widget>[
                  const Center(child: CircularProgressIndicator()),
                  Center(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: 'https://picsum.photos/250?image=9',
                    ),
                  ),
                ],
              ),
              // Expanded(
              //     child: Container(
              //   child: Image.network('https://picsum.photos/250?image=9'),
              // )),
              MyTextField(label: 'e-mail'),
              Divider(),
              MyTextField(label: 'password')
            ],
          )),
    );
  }

  PreferredSize MyAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.blue, Colors.white, Colors.pink],
          ),
        ),
        child: const SizedBox(
          child: FlutterLogo(),
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({Key? key, required this.label}) : super(key: key);
  late String? label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: label == 'password' ? true : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
