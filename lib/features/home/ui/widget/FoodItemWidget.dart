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
                  Text(
                    "assets/images/WhatsApp Image 2025-01-27 at 11.41.48 PM.jpeg",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
