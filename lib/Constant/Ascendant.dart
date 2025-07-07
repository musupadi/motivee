
import 'package:flutter/material.dart';

import 'ArrowPainter.dart';
import 'Color.dart';
import 'Size.dart';

Widget iconImageButton(String label, String imagePath, {TextStyle? textStyle}) { // 1. TAMBAHKAN {TextStyle? textStyle}
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          margin: EdgeInsets.only(top: 10),
          height: 85,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CSpiritualAndKontribusiHeader(),
            boxShadow: [
              BoxShadow(
                color: Colors.brown.shade200,
                offset: Offset(0, 0),
                blurRadius: 0.1,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  label,
                  style: textStyle, // 2. GANTI DENGAN textStyle dari parameter
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 50,
          height: 40,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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


Widget menujuKomunitasButton(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      color: Colors.cyan, // Warna biru toska terang
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.white, width: 1),
    ),
    child: InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        // TODO: Arahkan ke halaman komunitas
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Menuju Komunitas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Row(
              children: [
                CustomPaint(
                  size: const Size(80, 80),
                  painter: ArrowPainter(),
                ),

                const SizedBox(width: 8),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/img/Komunitas_.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
Widget CommunityContainer(){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CCommunityContainer()
    ),
    child: Row(
      children: [

      ],
    ),
  );
}