import 'package:flutter/material.dart';

import '../widget/support_widget.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f2),
        title: Center(
          child: Text(
            'Home Admin',
            style: AppWidget.boldTextFieldStyle(),
          ),
        ),
      ),
      body: Container(
        child: Column(),
      ),
    );
  }
}
