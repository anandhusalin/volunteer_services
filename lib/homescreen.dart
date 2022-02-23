import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:volunteer_services/model/listitem.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<ListItem> listItem=[
   ListItem(
       isSelected: true,icon: FontAwesomeIcons.home, tiitle: 'Generally'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.paintRoller, tiitle: 'Painting'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.paintBrush, tiitle: 'Cleaning'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.brush, tiitle: 'Repair'),
   ListItem(
       isSelected: true,icon: FontAwesomeIcons.fan, tiitle: 'Temperature'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.tree, tiitle: 'Tree'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.car, tiitle: 'Vechicle'),
   ListItem(
       isSelected: false,icon: FontAwesomeIcons.dog, tiitle: 'Animal'),

 ];
  Widget rowWidget ({required String firstName,
    required String secondName,
    required String thirdName,
    required String forthName,
    required String rowImage1,
    required String rowImage2,


  })
  {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(rowImage1)
                          )
                        ),
                      )),
                      Positioned(
                        bottom: 1,
                          child: Container(height: 50,
                      width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            SizedBox(
                              width: 10,
                            ),


                            Text(
                              firstName,style: TextStyle(
                              color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                                child: IconButton(onPressed: (){ }, icon: Icon(Icons.arrow_forward,color: Colors.white,)))
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ))
                    ],
                  ),




                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: 150,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(rowImage2)
                            )
                        ),
                      )),
                      Positioned(
                          bottom: 0,
                          child: Container(height: 50,
                            width: 150,
                            child: Row(

                              children: [
                                SizedBox(
                                  width: 10,
                                ),


                                Text(
                                  secondName,style: TextStyle(
                                    color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(onPressed: (){ }, icon: Icon(Icons.arrow_forward,color: Colors.white,))
                              ],
                            ),

                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ))
                    ],
                  ),




                ),

              ],
            ),

          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Row(
            children: [
              Center(
                child: Text("Dubai",style: TextStyle(
                    color: Colors.orange,fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              IconButton(onPressed: (){ }, icon: Icon(Icons.location_on,color: Colors.orange,size: 30,),
              ),
            ],
          ),




        ],
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed: () {}),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Container(

              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.circular(10),


                    
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  // labelText: 'Enter Name Here',

                   hintText: 'Search Your Services',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,size: 35,)
                ),
              ),
            
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),


            SizedBox(
              height: 10,
            ),

            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.white)),
              child: PageView.builder(
                itemCount:  3,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/slider.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),

                  );

                  })
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('POPULAR SERVICES',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  Row(
                    children: [
                      Text('View All'),
                       SizedBox(
                         width: 5,
                       ),
                       Icon(Icons.arrow_forward_ios_outlined,size:20,)
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),





            rowWidget(firstName : 'Deep \nCleaning',
                secondName :'Residential\nDisinfection',
                thirdName :'Creamy Doughnuts',
                forthName :'My Mart',
                rowImage1: 'images/service1.jpg',
                rowImage2: 'images/service2.jpg'),
            rowWidget(firstName : 'Commersial\nDisinfection',
                secondName :'Interior\nCleaning',
                thirdName :'Creamy Doughnuts',
                forthName :'My Mart',
                rowImage1: 'images/service4.jpg',
                rowImage2: 'images/slider.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text('CATEGORY',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),)),
            ),
            Container(
              height: 80,

              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listItem.length,
                  itemBuilder:(_, index){
                  return GestureDetector(
                    onTap: () {
                      for (int i = 0; i < listItem.length; i++) {
                        setState(() {
                          if (index == i) {
                            listItem[index].isSelected = true;
                          } else {
                            //the condition to change the highlighted item
                            listItem[i].isSelected = false;
                          }
                        });
                      }
                    },
                    child: Container(
                      width: 82,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: listItem[index].isSelected
                            ? Colors.orange
                            :Colors.white,
                      ),


                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(listItem[index].icon),
                            Text(listItem[index].tiitle),
                          ],

                        ),
                      ),
                    ),

                  );


              }),

            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('POPULAR SERVICES',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
                  Row(
                    children: [
                      Text('View All'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size:20,)
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            rowWidget(firstName : 'Deep \nCleaning',
                secondName :'Residential\nDisinfection',
                thirdName :'Creamy Doughnuts',
                forthName :'My Mart',
                rowImage1: 'images/service1.jpg',
                rowImage2: 'images/service2.jpg'),
            rowWidget(firstName : 'Commersial\nDisinfection',
                secondName :'Interior\nCleaning',
                thirdName :'Creamy Doughnuts',
                forthName :'My Mart',
                rowImage1: 'images/service4.jpg',
                rowImage2: 'images/slider.jpg'),
          ]),
        ),
      ),
    );
  }
}

