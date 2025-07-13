import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PotensiCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool Left;

  PotensiCard({required this.title, required this.imagePath,required this.Left});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: Left == true ? 10 : 10 ,right: Left == true ? 10 : 10,top: 5,bottom: 5),
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFFBDEBE0), // Added const
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ),
                ),
              )
          ),
        ),
        Container(
          height: 80,
          width: double.maxFinite,
          child: Align(
            alignment: Left ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}