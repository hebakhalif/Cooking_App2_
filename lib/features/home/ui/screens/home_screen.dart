import 'package:cooking_app_flutter/features/home/ui/screens/profile_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/Categories_Wdiget.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/FoodItemWidget.dart';
import 'package:cooking_app_flutter/core/helpers/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                     child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                           Text(
                                 "What are you \ncooking today",
                                 style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                                 ),
                                 ), 
                                  
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.source)))  
                     ],),
                   ),
              
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:  Material(
                          elevation: 2,
                           borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            width: 500,
                            child: CupertinoSearchTextField(
                              placeholder: "Search any reciipes",
                              placeholderStyle: TextStyle(color: Colors.grey),
                              backgroundColor: Colors.white38
                            ),
                          ),
                        )
                      ), 
                      SizedBox(height: 15,) ,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 5,    
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("assets/images/WhatsApp Image 2025-01-26 at 11.36.42 PM.jpeg",
                              ),
                            ),
                        ),
                      ) ,
                      SizedBox(height: 15,),
                      Text("Categories",
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(
                        height: 10,
                        ),
                       CategorySelector(),
              
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Quick & Easy",
                            style: TextStyle(
                              fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                            TextButton(
                              onPressed: (){
                                context.push( ProfileScreen ());
                              },
                             child: 
                             Text("View all",
                            style: TextStyle(
                              fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey
                            ),
                            ),
                             ),   
                          ],
                        ),
                      ),
                       Fooditemwidget() ,   
                ],
              ),
            ),
          )
         
    );
  }
}