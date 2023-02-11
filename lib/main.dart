

import 'package:flutter/material.dart';
import 'package:foodui/screen/main_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  return runApp(Home());

}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_page(),
    );
  }
}
