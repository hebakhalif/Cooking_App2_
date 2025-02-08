import 'package:flutter/cupertino.dart';

class Customfooditem extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String ImagePath;

  const Customfooditem(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImagePath,
                height: 200,
                width: 190,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
