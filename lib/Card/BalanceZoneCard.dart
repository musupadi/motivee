import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motivee/Constant/Color.dart';

class BalanceZoneCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final int current;
  final int total;
  final Color backgroundColor;
  final bool Left;
  const BalanceZoneCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.current,
    required this.total,
    required this.backgroundColor,
    required this.Left
  });

  @override
  Widget build(BuildContext context) {
    final double progress = current / total;

    final textColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black87 : Colors.white;
    final secondaryTextColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black54 : Colors.white70;
    final progressBarValueColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black : CProgress();



    const double iconSize = 60;
    const double iconOverlap = 8;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: Left ? 15: 0,right: Left ? 0 : 15),
          height: 75,
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
                padding: EdgeInsets.only(left: Left ? 40 : 5,right: Left ? 5 : 40,top: 5,bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max, // Tinggi Column menyesuaikan konten
                  crossAxisAlignment: CrossAxisAlignment.center, // Ratakan konten ke kiri
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
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
                              fontSize: 10
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



            ],
          ),
        ),
        Container(
          height: 75,
          width: double.maxFinite,
          child: Align(
            alignment: Left ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), //
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}