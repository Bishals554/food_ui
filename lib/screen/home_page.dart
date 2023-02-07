import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodui/provider/image_provider.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black,)),
          actions: [
            IconButton(onPressed: (){},
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                  color: Colors.red
                ),
                child: Icon(Icons.shopping_bag_outlined, color: Colors.white)))
          ],
        ),
      body: Column(
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
                      color: Colors.red,
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

        ],
      ),
    );
  }
}
