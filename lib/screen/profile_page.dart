import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';



class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on,color: redColor),
            Text('title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
          ],
        ),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){},
              icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                      color: redColor
                  ),
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.white)))
        ],
      ),
      body: ListView(
        children: [Column(
          children: [
            Container(
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: redColor
                    ),
                    child: Icon(Icons.person, color: Colors.white,size: 100,),
                  ),
                  SizedBox(height: 10,),
                  Text('Bishal Shrestha', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  Text('9844-XXXXXX | bishals554@gmail.com', style: TextStyle(color: Colors.grey.shade600),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10, right: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ACCOUNT', style: TextStyle(fontSize: 18, color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                  TextField(decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                    labelText: 'Profile',
                    labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                    prefixIcon: Icon(Icons.person,size: 30,)
                  ),),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Saved Address',
                      labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                      prefixIcon: Icon(Icons.star,size: 30,)
                  ),),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                      enabledBorder: InputBorder.none,
                      labelText: 'Notification',
                      labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                      prefixIcon: Icon(Icons.notifications,size: 30,)
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('OFFERS', style: TextStyle(fontSize: 18, color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.person, size: 30,),
                      labelText: 'Promos',
                      labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.star, size: 30,),
                      labelText: 'Get Discounts',
                      labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SETTINGS', style: TextStyle(fontSize: 18, color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(Icons.person, size: 30,),
                        labelText: 'Themes',
                        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                    ),)
                ],
              ),
            )
          ],
        ),
      ])
    );
  }
}
