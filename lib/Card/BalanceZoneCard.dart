import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceZoneCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final int current;
  final int total;
  final Color backgroundColor;

  const BalanceZoneCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.current,
    required this.total,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = current / total;

    final textColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black87 : Colors.white;
    final secondaryTextColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black54 : Colors.white70;
    final progressBarValueColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black : Color.fromRGBO(255, 190, 149  , 1.0);



    const double iconSize = 70;
    const double iconOverlap = 8;

    return Container(


      height: 90,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 219, 187, 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Konten Utama Kartu (Teks & Progress Bar)
          Container(
            // Memberikan padding untuk konten agar tidak tumpang tindih dengan ikon
            // Kiri & Atas: (Ukuran ikon yang overlap) + margin internal
            padding: const EdgeInsets.only(left: 65,right: 5,top: 5,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max, // Tinggi Column menyesuaikan konten
              crossAxisAlignment: CrossAxisAlignment.start, // Ratakan konten ke kiri
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),



                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "$current/$total",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: progressBarValueColor.withOpacity(0.3),
                        valueColor: AlwaysStoppedAnimation<Color>(progressBarValueColor),
                        minHeight: 6,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Positioned(
            left: -iconOverlap,
            bottom: 10,
            child: Container(
              width: iconSize,
              height: iconSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), //
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}