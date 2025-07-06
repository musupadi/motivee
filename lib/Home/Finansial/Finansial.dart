import 'package:flutter/material.dart';
import 'package:motivee/Card/CardButtonGeneral.dart';
import 'package:motivee/Constant/Size.dart';
import '../../Card/CardButtonGeneral2.dart';
import '../../Constant/ArrowPainter.dart';
import '../../Constant/Ascendant.dart';
import '../../Constant/Color.dart';

class Finansial extends StatelessWidget {
  const Finansial({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: CBackground(),
        ),
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/spiritual--.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Finansial",
                      style: TextStyle(
                          fontSize: TitlesSize(),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                      ),),
                    Text("Menata Keuangan menuju \nketenangan hidup",
                      style: TextStyle(
                          fontSize: Header1Size(),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'
                      ),),
                  ],
                )
              ],
            ),
            Text("Uang bukan segalanya, tapi cara kita mengelolanya menentukan arah hidup yang lebih bebas.\nZona ini membantumu menjadi bijak, merdeka, dan seimbang secara finansial"),
            const SizedBox(height: 10),
            _buildTopButtons(),
            const SizedBox(height: 20),
            // Ibadah & Aksi Kebaikan
            Container(
              decoration:BoxDecoration(
                  color: CBackground3(),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.brown.shade200,
                        offset: Offset(0, 0),
                        blurRadius: 0.1
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/spiritual--.png'),
                              fit: BoxFit.cover,
                            ),

                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Uji dan Tantangan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Header2Size(),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Tes Kesehatan Finansial",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Tingkatan Pencapaian",Left: false,),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Panduan Praktis",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Pantau Progres",Left: false,),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // 2
            Container(
              decoration:BoxDecoration(
                  color: CBackground3(),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.brown.shade200,
                        offset: Offset(0, 0),
                        blurRadius: 0.1
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(

                  children: [
                    Row(

                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/spiritual--.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aksi Finansial",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Header2Size(),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Rencana\nKeuangan Pribadi",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Pantau Keuangan harian",Left: false,),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Belanja Cerdas",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Manajemen Hutang & Tabungan",Left: false,),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Konsultasi Ahli
            Container(
              decoration:BoxDecoration(
                  color: CBackground3(),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.shade200,
                      offset: Offset(0, 0),
                      blurRadius: 0.1
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/spiritual--.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Konsultasi Ahli",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Header2Size(),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CIbadahDanAksiButton(), TextString: "Perencana\nKeuangan",imagePath: 'assets/img/spiritual--.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CIbadahDanAksiButton(), TextString: "Konsultan\nBisnis UMKM",imagePath: 'assets/img/spiritual--.png',Left: false),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CIbadahDanAksiButton(), TextString: "Konsultan\nPajak",imagePath: 'assets/img/spiritual--.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CIbadahDanAksiButton(), TextString: "Konselor Emosional Finansial",imagePath: 'assets/img/spiritual--.png',Left: false),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            menujuKomunitasButton(context)
          ],
        ),
      ),
    );
  }
  Widget _buildTopButtons() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: iconImageButton('Ilmu\nKeuangan', 'assets/img/Ilmu agama.png')),
          Expanded(
              flex: 1,
              child: iconImageButton('Mindset\nFinansial', 'assets/img/Inspirasi Islam.png')),
          Expanded(
              flex: 1,
              child: iconImageButton('Tips\nKeuangan', 'assets/img/Syukur & Amal harian.png')),
        ],
      ),
    );
  }





}
