import 'package:flutter/material.dart';
import 'package:motivee/Card/CardButtonGeneral.dart';
import 'package:motivee/Constant/Size.dart';
import '../../Card/CardButtonGeneral2.dart';
import '../../Constant/ArrowPainter.dart';
import '../../Constant/Ascendant.dart';
import '../../Constant/Color.dart';

class Rekreasi extends StatelessWidget {
  const Rekreasi({super.key});

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
                      image: AssetImage('assets/img/rekreasi2i.png'),
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
                    Text("Rekreasi & Relaksasi",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins-Bold'
                      ),),
                    Text("Menikmati hidup, menyegarkan\ndiri dan mengisi ulang energi.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'
                      ),),
                  ],
                )
              ],
            ),
            Text("Membantu pengguna menjaga kesehatan mental lewat aktivitas rekreatif,"
                "relaksasi berkualitas, dan momen sederhana yang menyegarkan hati, pikiran,"
                " serta tubuh untuk menemukan kembali kebahagiaan sejati.",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
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
                              image: AssetImage('assets/img/tes kebutuhan.png'),
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
                              Text("Tes Kebutuhan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins-Bold'
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Tes Kualitas Hubungan",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Level Hubunganku",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Panduan\nBijak",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Progress",Left: false,),
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
                              image: AssetImage('assets/img/tindakan nyata.png'),
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
                              Text("Tindakan Nyata",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins-Bold',
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Jurnal\nHubungan",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Komunikasi\nSehat",Left: false,),
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
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Koneksi\nPositif",Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral(ColorsData: CIbadahDanAksiButton(), TextString: "Aksi Kebaikan\nSosial",Left: false,),
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
                              image: AssetImage('assets/img/mindset seimbang.png'),
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
                                    fontSize: 16,
                                    fontFamily: 'Poppins-Bold',
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
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString: "Psikolog\nKeluarga",imagePath: 'assets/img/spiritual--.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString: "Konselor\nKomunikasi",imagePath: 'assets/img/spiritual--.png',Left: false),
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
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString: "Psikolog\nParenting",imagePath: 'assets/img/spiritual--.png',Left: true),
                            ),
                            Expanded(
                              flex: 1,
                              child: CardbuttonGeneral2(ColorsData: CSosialKonsultasi(), TextString: "Sosiolog\nKomunitas",imagePath: 'assets/img/spiritual--.png',Left: false),
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
            child: iconImageButton(
              'Edu\nRekreasi',
              'assets/img/edu rekreasi.png', // ✅ Path lengkap & tanpa spasi
              textStyle: TextStyle(
                fontFamily: 'Roboto-bold',
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: iconImageButton('Mindset\nSeimbang',
                  'assets/img/mindset seimbang.png',
                textStyle: TextStyle(
                  fontFamily: 'Roboto-Bold',
                  fontSize: 14
                )
              )),
          Expanded(
              flex: 1,
              child: iconImageButton('Relaksasi\nBijak',
                  'assets/img/relaksasi bijak.png',
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
