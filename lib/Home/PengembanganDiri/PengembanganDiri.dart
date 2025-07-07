import 'package:flutter/material.dart';
import 'package:motivee/Card/CardButtonGeneral.dart';
import 'package:motivee/Constant/Size.dart';
import '../../Card/CardButtonGeneral2.dart';
import '../../Constant/ArrowPainter.dart';
import '../../Constant/Ascendant.dart';
import '../../Constant/Color.dart';

class PengembanganDiri extends StatelessWidget {
  const PengembanganDiri({super.key});

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
                      image: AssetImage('assets/img/pengembangan diri11.png'),
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
                    Text("Pengembangan Diri &\nKreativitas",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins-Bold'
                      ),),
                    Text("Buka Hati, Hadirlah Sepenuhnya",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'
                      ),),
                  ],
                )
              ],
            ),
            Text("Memberi wawasan dan pola pikir yang mencerahkan agar pertumbuhan diri berakar"
                "dari kesadaran dan tujuan yang tepat. Ilmu bukan beban, "
                "ia adalah cahaya yang menuntun arah.",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inter'
              ),),
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
                              image: AssetImage('assets/img/uji potensi111.png'),
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
                              Text("Uji Potensi & Kenali Diri",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins-Bold',
                                    fontSize: 16,
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Tes Potensi",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Level Perkembangan",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Panduan Bertumbuh",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Pelacak Progres",Left: false,),
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
                              image: AssetImage('assets/img/bertumbuh lewat langkah.png'),
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
                              Text("Bertumbuh Lewat Langkah",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins-Bold',
                                    fontSize: 16,
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Rencana Aksi\nPribadi",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Kebiasaan\nBaik",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Tantangan\nHarian",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(),
                                TextString: "Ruang\nKreatif",Left: false,),
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
                              image: AssetImage('assets/img/pola pikir positif1.png'),
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
                                    fontFamily: 'Poppins-Bold',
                                    fontSize: 16,
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
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(),
                                  TextString: "Coach Pengembangan\nDiri",imagePath: 'assets/img/coach peng diri.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(),
                                  TextString: "Mentor Kreativitas\n& Ekspresi",imagePath: 'assets/img/mentor kreativitas.png',Left: false),
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
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(),
                                  TextString: "Coach Public\nSpeaking &\nConfidence",imagePath:
                                  'assets/img/coach public speaking.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(),
                                  TextString: "Konsultan\nKarir & Skill",imagePath:
                                  'assets/img/konsultan karir111.png',Left: false),
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
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: iconImageButton('Kumpulan\nWawasan',
                  'assets/img/kumpulan wawasan1.png',
                textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto-Bold'
                )
              )),
          Expanded(
              flex: 1,
              child: iconImageButton('Pola Pikir\nPositif',
                  'assets/img/pola pikir positif1.png',
                textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto-Bold'
                )
              )),
          Expanded(
              flex: 1,
              child: iconImageButton('Mini\nAkademi',
                  'assets/img/mini akademiku.png',
                textStyle: TextStyle(
                  fontFamily: 'Roboto-Bold',
                  fontSize: 14
                )
              )),
        ],
      ),
    );
  }





}
