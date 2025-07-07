import 'package:flutter/material.dart';
import 'package:motivee/Card/CardButtonGeneral.dart';
import 'package:motivee/Constant/Size.dart';
import '../../Card/CardButtonGeneral2.dart';
import '../../Constant/ArrowPainter.dart';
import '../../Constant/Ascendant.dart';
import '../../Constant/Color.dart';

class Pekerjaan extends StatelessWidget {
  const Pekerjaan({super.key});

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
                      image: AssetImage('assets/img/pekerjaan.png'),
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
                    Text("Pekerjaan & Karir",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins-Bold'
                      ),),
                    Text("Langkah cerdas untuk\nmasa depan yang terukur",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'
                      ),),
                  ],
                )
              ],
            ),
            Text("Kelola pekerjaan dan karir secara sadar, bukan sekedar cari penghasilan, tapi membangun masa depan yang utuh,"
                " bertumbuh dan memberi arti.",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inter'
              ),),
            Text("Dapatkan peluang, dukungan ahli dan progres yang bisa dilacak dengan jelas dan terarah.",
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
                              image: AssetImage('assets/img/tes & tantangan 3.png'),
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
                              Text("Tes & Tantangan",
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
                                TextString: "Tes Potensi dan\nKarir",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Level Kerja &\nKarierku",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Panduan",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Lacak Progres",Left: false,),
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
                              image: AssetImage('assets/img/langkah nyata11.png'),
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
                              Text("Langkah Nyata",
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Perencanaan\nKarir",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Upgrade\nSkill",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Bursa\nKerja",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Kantor\nOnlineku",Left: false,),
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
                              image: AssetImage('assets/img/pola pikir bertumbuh.png'),
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
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString:
                              "Konsultan\nKarir",imagePath: 'assets/img/langkah nyata11.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString:
                              "Mentor\nProfesi",imagePath: 'assets/img/mentor profesi 11.png',Left: false),
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
                                  TextString: "Psikolog\nKerja",imagePath:
                                  'assets/img/psikolog kerja11.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString:
                              "Trainer\nSkill",imagePath: 'assets/img/trainer skill.png',Left: false),
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
              child: iconImageButton('Kerja Zaman\nNow',
                'assets/img/kerja zaman now.png',
                textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto-Bold'
                )
              )
          ),
          Expanded(
              flex: 1,
              child: iconImageButton('Pola Pikir\nBertumbuh',
                'assets/img/pola pikir bertumbuh.png',
                textStyle: TextStyle(
                  fontFamily: 'Roboto-Bold',
                  fontSize: 14
                )
              )
          ),
          Expanded(
              flex: 1,
              child: iconImageButton('Visi Kerja\nKarirku',
                'assets/img/visi kerja.png',
                textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto-Bold'
                )
              )),
        ],
      ),
    );
  }





}
