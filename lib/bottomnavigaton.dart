import 'package:flutter/material.dart';
import 'package:volunteer_services/menu.dart';

import 'homescreen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable:  Menu.selectedIndexNotifier,
        builder:(BuildContext ctx, int updatedIndex , Widget? _) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),

            child: BottomNavigationBar(
                backgroundColor: Color(0xFF1E7248),
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.white,
                currentIndex: updatedIndex,
                onTap: (newIndex){
                  Menu.selectedIndexNotifier.value=newIndex;
                },

                items: [
                  BottomNavigationBarItem(

                      icon:Icon( Icons.home),
                      label: ''

                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),

                      label: ''),

                  BottomNavigationBarItem(

                      icon:Icon( Icons.shopping_cart),
                      label:''
                  ),
                ]
            ),
          );
        }
    );

  }}

