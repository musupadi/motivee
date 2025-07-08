import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PotensiCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool Left;

  const PotensiCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.Left
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: Left == true ? 35 : 10 ,right: Left == true ? 10 : 35,top: 10,bottom: 10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(205,214, 51, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A237E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(top: 20,left: Left ? 10 : 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}