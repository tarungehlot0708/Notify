import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),centerTitle: true,),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.5,
          width: MediaQuery.of(context).size.width*0.5,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length-1)].shade200,
        ),
      ),
    );
  }
}
