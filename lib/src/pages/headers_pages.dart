import 'package:flutter/material.dart';
import 'package:disenio_app/src/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
     
      // body: HeaderCuadrado(),
      // ignore: prefer_const_constructors
      body: HeaderWaveGradient(),
      // body: HeaderWaveDos(),
      // body: HeaderWave(),
      // body: HeaderCurvo(),
      // body: HeaderPico(),
      // body: HeaderTriangular(),
      // body: HeaderDiagonal(),
      // body: HeaderBordesRedondos(),

    );
  }
}