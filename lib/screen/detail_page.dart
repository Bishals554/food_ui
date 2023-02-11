import 'package:flutter/material.dart';
import 'package:foodui/constant/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';




class DetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 550,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(200),
                        bottomLeft: Radius.circular(200)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 10
                        )
                      ]
                    ),
                    height: 500,
                    width: double.infinity,
                    child:Column(
                      children: [
                        SizedBox(height: 100,),
                        Text('Chipotle Cheesy Chicken', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('A Signature flame-grilled chicken patty topped \nwith smoked beef', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey.shade600),),
                        SizedBox(height: 50,),
                        Image.asset('assets/images/burger.png', height: 200,)
                      ],
                    )

                  ),
                ],
              ),
                ),

                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius:4,

                      )],
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: (){
                        Get.back();
                      },
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius:4,

                      )],
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border, color: redColor,),
                      onPressed: (){},
                    ),
                  ),
                ),

                Positioned(
                  top: 400,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 10,
                        )
                      ]
                    ),
                    height: 50,
                  width: 50,
                    child: TextButton(
                      onPressed: (){},
                      child: Text('S', style: TextStyle(
                        fontSize: 22,
                        color: Colors.black
                      ),),
                    ),
                  ),
                ),
                Positioned(
                  top: 470,
                  left: 170,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 10,
                          )
                        ]
                    ),
                    height: 50,
                    width: 50,
                    child: TextButton(
                      onPressed: (){},
                      child: Text('M', style: TextStyle(
                        color: Colors.black,
                        fontSize: 22
                      ),),
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 10,
                          )
                        ]
                    ),
                    height: 50,
                    width: 50,
                    child: TextButton(
                      onPressed: (){},
                      child: Text('L', style: TextStyle(
                        color: Colors.black,
                        fontSize: 22
                      ),),
                    ),
                  ),
                )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 120,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  height: 35,
                  width: 35,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add,size: 20,),
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70,
                    child: Text('4', style: TextStyle(fontSize: 20),)
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  height: 35,
                  width: 35,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.remove,size: 20,),
                  )
                ),
              ],
            ),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price'),
                        Text('Rs. 140', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 60,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Go to Cart', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
