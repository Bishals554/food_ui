

import 'package:flutter/material.dart';
import 'package:foodui/screen/home_page.dart';

void main(){
  return runApp(Home());

}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
