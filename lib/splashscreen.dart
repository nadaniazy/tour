import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                homepage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
 height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Image(image: AssetImage("images/m.webp"),
          fit: BoxFit.cover,
        )

      )
    );
  }
}
