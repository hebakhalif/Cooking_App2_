import 'package:flutter/material.dart';

class Fooditemwidget extends StatefulWidget {
  const Fooditemwidget({super.key});

  @override
  State<Fooditemwidget> createState() => _FooditemwidgetState();
}

class _FooditemwidgetState extends State<Fooditemwidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row( 
          children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/WhatsApp Image 2025-01-27 at 11.41.48 PM.jpeg",
                     height: 200,
                     width: 190,
                      ),
                      Text("Spicy Peruvian Roast\n Chicken with Sweet\n Potatoes & Cilantro-Fet",
                      style: TextStyle(
                        fontSize: 16,
                         fontWeight: FontWeight.bold
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      
                      )
                  ],
                ),
              ),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        "assets/images/WhatsApp Image 2025-01-27 at 11.41.48 PM.jpeg",
                       height: 200,
                       width: 200,
                        ),
                  ),
                        Text("Spicy Peruvian Roast\n Chicken with Sweet\n Potatoes & Cilantro-Fet",
                      style: TextStyle(
                        fontSize: 16,
                         fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      
                      )
                ],
              ),
              SizedBox()
          ],
        ),
      ),
    );
  }
}