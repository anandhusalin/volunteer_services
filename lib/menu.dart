import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_services/categories.dart';
import 'package:volunteer_services/myaccount.dart';
import 'package:volunteer_services/viewall.dart';

import 'Add.dart';
import 'bottomnavigaton.dart';
import 'homescreen.dart';


class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);



  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages =[
    HomePage(),
    Categories,

    Add(),
    ViewAll(),
    MyAccount()



  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.green,),

      ),


      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigation (),
      body: SafeArea(
        child: ValueListenableBuilder(


            valueListenable: selectedIndexNotifier,
            builder: ( BuildContext context, int updatedIndex, _) =>
            _pages[updatedIndex]



        ),
      ),

    );
  }


}


