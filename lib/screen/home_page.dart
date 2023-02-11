import 'package:flutter/material.dart';
import 'package:foodui/constant/color.dart';
import 'package:foodui/screen/detail_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,color: Colors.red),
              Text('Chicago Illinois', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
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
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                onTap: (){},
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search Our Delicious Burger',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      width: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/burger.png'),
                          ),
                          Text('Burger', style: TextStyle(color: Colors.white, fontSize: 20),),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('>',style: TextStyle(fontSize: 30, color: Colors.red),),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      width: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 8, left: 8, bottom: 26),
                            child: Image.asset('assets/images/pizza.png'),
                          ),
                          Text('Pizza', style: TextStyle(color: Colors.black, fontSize: 20),),
                          SizedBox(height: 10,),
                          Container(
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('>',style: TextStyle(fontSize: 30, color: Colors.white),),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      width: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/cake.png',height: 75,),
                          ),
                          Text('Burger', style: TextStyle(color: Colors.black, fontSize: 20),),
                          SizedBox(height: 10,),
                          Container(
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('>',style: TextStyle(fontSize: 30, color: Colors.white),),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      width: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/burger.png'),
                          ),
                          Text('Burger', style: TextStyle(color: Colors.white, fontSize: 20),),
                          SizedBox(height: 10,),
                          Container(
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('>',style: TextStyle(fontSize: 30, color: Colors.red),),
                              ))
                        ],
                      ),
                    ),
                  ],

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text('Popular', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                TextButton(onPressed: (){}, child: Text('View All >', style: TextStyle(color: Colors.red),))
              ],
            ),
            Container(
              height: 250,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                    height: 225,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> DetailPage());
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 175, left: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Chipotle Cheesy Chicken', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
                                  Text('Chicken Burger', style: TextStyle(color: Colors.grey),)
                                ],
                              ),SizedBox(width: 100,),
                              Text('Rs. 100', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
                            ],
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(() => DetailPage());
                    },
                    child: Container(
                        height: 150,
                        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                        decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> DetailPage());
                    },
                    child: Container(
                      height: 150,
                      width: 220,
                      // color: Colors.blue,
                      child: Image.asset('assets/images/burger1.png', fit: BoxFit.cover,),
                    ),
                  )

                ],
              ),
            ),

            SizedBox(height: 10,),
            Container(
              height: 250,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 175, left: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chipotle Cheesy Chicken', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
                                Text('Chicken Burger', style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            SizedBox(width: 100,),
                            Text('Rs. 100', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
                          ],
                        )),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                    decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 220,
                    // color: Colors.blue,
                    child: Image.asset('assets/images/burger1.png', fit: BoxFit.cover,),
                  )

                ],
              ),
            )


          ],
        ),
      ]),
    );
  }
}
