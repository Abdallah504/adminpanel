import 'package:adminpanel/view/screens/about.dart';
import 'package:adminpanel/view/screens/cv.dart';
import 'package:adminpanel/view/screens/exeprience.dart';
import 'package:adminpanel/view/screens/personal-info.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List screens = [
   PersonalInfo(),
   AboutScreen(),
   CvScreen(),
   ExeprienceScreen()
   
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
              Expanded(
                child: Drawer(
                  child: ListView(
                    children: [
                      DrawerHeader(
                        child: Center(
                          child: Text('Portfolio Admin'),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          onItemTapped(0);
                        },
                        horizontalTitleGap: 0.0,
                        leading: Icon(Icons.person, size: 20,color: selectedIndex==0?Colors.red:Colors.white,),
                        title: Text(
                          " Personal info",
                          style: TextStyle(color: selectedIndex==0?Colors.red:Colors.white,),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          
                          onItemTapped(1);
                        },
                        horizontalTitleGap: 0.0,
                        leading: Icon(Icons.text_fields,color: selectedIndex==1?Colors.red:Colors.white,),
                        title: Text(
                          " About",
                          style: TextStyle(color: selectedIndex==1?Colors.red:Colors.white,),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          onItemTapped(2);
                        },
                        horizontalTitleGap: 0.0,
                        leading: Icon(Icons.document_scanner,color: selectedIndex==2?Colors.red:Colors.white,),
                        title: Text(
                          " CV",
                          style: TextStyle(color: selectedIndex==2?Colors.red:Colors.white,),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          onItemTapped(3);
                        },
                        horizontalTitleGap: 0.0,
                        leading: Icon(Icons.edit_document,color: selectedIndex==3?Colors.red:Colors.white,),
                        title: Text(
                          " Experience",
                          style: TextStyle(color: selectedIndex==3?Colors.red:Colors.white,),
                        ),
                      )
                      
                      
                    ],
                  ),
                ),
              ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: screens[selectedIndex],
              )
              ,
            ),
          ],
        ),
      ),
    
    );
  }
}