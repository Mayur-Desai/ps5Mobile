import 'package:flutter/material.dart';
import 'package:ps5mobile/pages/home.dart';

import 'components/ScreenSize.dart';
void  main(){
  runApp(Damnniga());
}

class Damnniga extends StatelessWidget {
  const Damnniga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),


    );
  }
}
