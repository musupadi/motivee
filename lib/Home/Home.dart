import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:motivee/Card/ProductivityCard.dart';
import 'package:motivee/Constant/Route.dart'; // Ensure toSpiritual is defined here

import '../Card/BalanceZoneCard.dart';
import '../Card/EconomyCard.dart';
import '../Card/PotensiCard.dart';
import '../Constant/Color.dart';
import '../Constant/PeakCarousel.dart';
import '../Constant/Size.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatelessWidget {
  const Home({super.key});

  String greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return "Selamat pagi ☕";
    if (hour < 17) return "Selamat siang ☀";
    return "Selamat malam 🌙";
  }

  @override
  Widget build(BuildContext context) {
    bool Clicked = false;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: CBackground()
        ),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CBackground2()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(
                          "Tantangan",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CBackground2()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(
                          "Saldo",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CBackground2()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(
                          "Kantorku",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CBackground2()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(
                          "+",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),


            // ✅ Chatbot box muncul pertama
            // 🔹 1. Chatbot section
            // 🔹 1. Chatbot Vee
            // 🔹 1. Chatbot section

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex : 1,
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    50
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/img/BotAppVee.png"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                        ),
                        Expanded(
                          flex : 3,
                          child: Column(

                            children: [
                              Text(
                                "Senang Bertemu lagi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Lato-Black',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min, // Agar Row hanya memakan tempat seperlunya
                                crossAxisAlignment: CrossAxisAlignment.center, // Agar teks dan gambar rata tengah vertikal
                                children: [
                                  Text(
                                    "Bang Piyo",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Lato-Black',
                                    ),
                                  ),
                                  SizedBox(width: 8), // Memberi spasi antara teks dan gambar
                                  Image.asset(
                                    'assets/img/smiling-face.png',
                                    height: 24, // Ukuran disesuaikan agar seimbang dengan font
                                    width: 24,
                                  ),
                                ],
                              ),


                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Vee ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      "siap menemani dan membantu \nkapanpun kamu butuh ✋ ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    VeeChatPrompt(),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 15, right: 10, left: 17),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 163,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF00CCCC),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 15, top: 10, bottom: 2),
                            child: Row(
                              children: [
                                Container(
                                  height: 44,
                                  width: 41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/pengembangan2.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                SizedBox(
                                  width: 12 ,
                                ),
                                Text(
                                  "Semangat\nHari ini",
                                  style: TextStyle(
                                    fontFamily: 'Lato-Black',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18,right: 2,top: 10),
                              child: Text(
                                "Tidak ada yang lebih kuat dari seseorang "
                                    "yang memilih...",
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 8, right: 10, left: 30, top: 2),
                            child: Container(
                              height: 23,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFFF94D00),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text(
                                'Selengkapnya ...',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),),
                            ),



                          ),





                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 6, right: 10),
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF00CCCC),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 15, top: 10, bottom: 2),
                            child: Row(
                              children: [
                                Container(
                                  height: 38,
                                  width: 41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/veeboost.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "VeeBoost",
                                  style: TextStyle(
                                    fontFamily: 'Lato-Black',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18,right: 2,top: 19),
                              child: Text(
                                "Butuh dorongan semangat yang\nlebih kuat ?",
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 8, right: 10, left: 30, top: 2),
                              child: Container(
                                height: 25,
                                width: 120,

                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(249, 77, 0, 1.0),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text(
                                  "BOOST SEKARANG",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),


            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 35, top: 8, bottom: 12),
                        child: Text(
                          "ZONA KESEIMBANGAN HIDUP",
                          style: TextStyle(
                            color: CBlack(),
                            fontFamily: 'Poppins-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () { toSpiritual(context, false); },
                              child: BalanceZoneCard(
                                title: "Spiritual & Kontribusi",
                                imagePath: "assets/img/spiritual_icon.png",
                                current: 7,
                                total: 10,
                                backgroundColor: CSpiritual(),
                                Left: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // onTap: () { toKesehatan(context, false); },
                              child: BalanceZoneCard(
                                title: "Kesehatan Fisik & Mental",
                                imagePath: "assets/img/kesehatan fisik.png",
                                current: 6,
                                total: 10,
                                backgroundColor: CSpiritual(),
                                Left: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //         InkWell(
                      //           child: BalanceZoneCard(
                      //             title: "",
                      //             imagePath: "",
                      //             current: 10,
                      //             total: 15,
                      //             backgroundColor: CHubunganSosial(),
                      //           ),
                      //         ),
                      //         InkWell(
                      //
                      //           child: BalanceZoneCard(
                      //             title: "Finansial",
                      //             imagePath: "assets/img/koin.png",
                      //             current: 7,
                      //             total: 10,
                      //             backgroundColor: CFinansial(),
                      //           ),
                      //         ),
                      //         InkWell(
                      //

                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                               onTap: () { toSosial(context, false); },
                              child: BalanceZoneCard(
                                title: "Hubungan Sosial",
                                imagePath: "assets/img/hubungan sosial1.png",
                                current: 7,
                                total: 10,
                                backgroundColor: CHubunganSosial(),
                                Left: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // onTap: () { toFinansial(context, false); },
                              child: BalanceZoneCard(
                                title: "Finansial",
                                imagePath: "assets/img/koin.png",
                                current: 6,
                                total: 10,
                                backgroundColor: CFinansial(),
                                Left: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //           child: BalanceZoneCard(
                      //             title: "",
                      //             imagePath: "",
                      //             current: 7,
                      //             total: 10,
                      //             backgroundColor: CPengembanganDiri(),
                      //           ),
                      //         ),
                      //         InkWell(
                      //
                      //           child: BalanceZoneCard(
                      //             title: "",
                      //             imagePath: "",
                      //             current: 7,
                      //             total: 10,
                      //             backgroundColor: CPekerjaanKarir(),
                      //           ),
                      //         ),


                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () { toPengembanganDiri(context, false); },
                              child: BalanceZoneCard(
                                title: "Pengembangan\nDiri & Kreativitas",
                                imagePath: "assets/img/pengembangan diri11.png",
                                current: 7,
                                total: 10,
                                backgroundColor: CPengembanganDiri(),
                                Left: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // onTap: () { toPekerjaan(context, false); },
                              child: BalanceZoneCard(
                                title: "Pekerjaan & Karir",
                                imagePath: "assets/img/pekerjaan2.png",
                                current: 6,
                                total: 10,
                                backgroundColor: CSpiritual(),
                                Left: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //         InkWell(
                      //
                      //           child: BalanceZoneCard(
                      //             title: "",
                      //             imagePath: "",
                      //             current: 7,
                      //             total: 10,
                      //             backgroundColor: CHunian(),
                      //           ),
                      //         ),
                      //         InkWell(
                      //
                      //           child: BalanceZoneCard(
                      //             title: "",
                      //             imagePath: "",
                      //             current: 5,
                      //             total: 10,
                      //             backgroundColor: CRekreasi(),
                      //           ),
                      //         )
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () { toHunian(context, false); },
                              child: BalanceZoneCard(
                                title: "Hunian & Lingkungan",
                                imagePath: "assets/img/hunian2.png",
                                current: 7,
                                total: 10,
                                backgroundColor: CSpiritual(),
                                Left: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () { toRekreasi(context, false); },
                              child: BalanceZoneCard(
                                title: "Rekreasi & Relaksasi",
                                imagePath: "assets/img/rekreasi2i.png",
                                current: 6,
                                total: 10,
                                backgroundColor: CSpiritual(),
                                Left: false,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PeekCarousel(),
            ),//PeekCarousel




            const SizedBox(height: 30),
            Padding(padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
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
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(right: 90, top:8, bottom: 12, left: 1),
                      child: Text(
                        "ZONA PRODUKTIVITAS",
                        style: TextStyle(
                          color: CBlack(),
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ProductivityCard(title: '  Rencana', imagePath: 'assets/img/rencana2.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: ProductivityCard(title: 'Agenda', imagePath: 'assets/img/agenda.png', Left: false),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ProductivityCard(title: '  Aktivitas', imagePath: 'assets/img/aktivitas.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: ProductivityCard(title: 'Catatan', imagePath: 'assets/img/catatan2.png',Left: false,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ], // This was missing a closing parenthesis and comma, assuming it's inside a Column
                ),
              ),
            ),






            const SizedBox(height: 30),
            Padding(padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
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
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(right: 140, top:8, bottom: 12, left: 1),
                      child: Text(
                        "ZONA EKONOMI",
                        style: TextStyle(
                          color: CBlack(),
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Economycard(title: '   Dompetku', imagePath: 'assets/img/dompetku.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Economycard(title: '  Lapak\nMotivee', imagePath: 'assets/img/lapak.png', Left: false),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Economycard(title: '  Cuan dari\n    Rumah',
                                imagePath: 'assets/img/cuan.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Economycard(title: ' Pojok\nUMKM', imagePath: 'assets/img/pojok umkm2.png',Left: false,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ], // This was missing a closing parenthesis and comma, assuming it's inside a Column
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SponsorCard(imagePath: "assets/img/Klinik Aliyya.png"),
            ),
            // const SizedBox(height: 12),
            // Padding(
            //   padding: const EdgeInsets.only(left: 8,right: 8),
            //   child: ZonaPotensiSection(),
            // ),
            const SizedBox(height: 30),
            Padding(padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
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
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(right: 140, top:8, bottom: 12, left: 1),
                      child: Text(
                        "ZONA POTENSI",
                        style: TextStyle(
                          color: CBlack(),
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: PotensiCard(title: '       Tes &\n   Tantangan', imagePath: 'assets/img/tes12.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: PotensiCard(title: '    Vee\nAkademi', imagePath: 'assets/img/vee akademi2.png', Left: false),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: PotensiCard(title: '    Video &\n     Artikel', imagePath: 'assets/img/artikel.png',Left: true,),
                            ),
                            Expanded(
                              flex: 1,
                              child: PotensiCard(title: 'Berita', imagePath: 'assets/img/berita.png',Left: false,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ], // This was missing a closing parenthesis and comma, assuming it's inside a Column
                ),
              ),
            ),


            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PremiumUpgradeButton(),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: ZonaPublikSection(),
            ),
            const SizedBox(height: 12),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(height: 1), // mencegah error "size: MISSING"
            ),
          ],
        ),
      ),
    ); // <-- THIS SEMICOLON WAS ADDED
  }
}


class VeeChatBubbleWithTail extends StatelessWidget {
  final String message;

  const VeeChatBubbleWithTail({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,
          child: CustomPaint(
            size: const Size(20, 10),
            painter: TrianglePainter(),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFD9E4FF), Color(0xFFB3C7FF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.indigo.withOpacity(0.1),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF222B45),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFFD9E4FF), Color(0xFFB3C7FF)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget buildRunningTextBar() {
  return Container(
    width: double.infinity,
    height: 40,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    margin: const EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0xFFBB86FC), Color(0xFF9B9BFF)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Marquee(
      text: 'Running Text Motivasi Harian - Tetap semangat dan produktif ya! 💪',
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 40.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}


// class EconomyCard extends StatelessWidget {
//   final String title;
//   final String imagePath;
//
//   const EconomyCard({
//     super.key,
//     required this.title,
//     required this.imagePath,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       width: (MediaQuery.of(context).size.width - 54) / 2, // 2 column,
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(250, 60, 46, 1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         children: [
//           // Text
//           Expanded(
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           const SizedBox(width: 12),
//           // Icon/Image
//           Container(
//             width: 48,
//             height: 48,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//
//
//         ],
//       ),
//     );
//   }
// }




class _ProductivityItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const _ProductivityItem({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 16 * 2 - 12) / 2, // 2 column
      height: 70,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFFFD54F), // Added const
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
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
            const SizedBox(width: 10),
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
    );
  }
}
class SponsorCard extends StatelessWidget {
  final String imagePath;

  const SponsorCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xFF00BFA5), // warna dasar toska
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
class PremiumUpgradeButton extends StatelessWidget {
  const PremiumUpgradeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF26C6DA), Color(0xFF00ACC1)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "         Upgrade Premium",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.arrow_forward, color: Colors.white),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage( // Added const
                          image: AssetImage(
                              "assets/img/bintang.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class VeeChatPrompt extends StatelessWidget {
  const VeeChatPrompt({super.key});

  static void _showChatModal(BuildContext context) {
    final TextEditingController _chatController = TextEditingController();
    List<Map<String, String>> messages = []; // {'sender': 'user'/'vee', 'text': '...'}
    bool isLoading = false;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            Future<void> sendToVee(String message) async {
              setState(() {
                isLoading = true;
                messages.add({'sender': 'user', 'text': message});
              });

              try {
                final response = await http.post(
                  Uri.parse('https://mastiscan.com/api/VeeChat/respond'),
                  headers: {'Accept': 'application/json'},
                  body: {'message': message},
                );

                if (response.statusCode == 200) {
                  final data = jsonDecode(response.body);
                  final reply = data['vee_response'] ?? "Vee tidak bisa menjawab saat ini.";
                  setState(() {
                    messages.add({'sender': 'vee', 'text': reply});
                  });
                } else {
                  setState(() {
                    messages.add({'sender': 'vee', 'text': 'Gagal: ${response.statusCode}'});
                  });
                }
              } catch (e) {
                setState(() {
                  messages.add({'sender': 'vee', 'text': 'Error: $e'});
                });
              }

              setState(() {
                isLoading = false;
              });
            }

            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              50
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/img/BotAppVee-crop.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Chat dengan Vee ✨",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final msg = messages[index];
                          final isUser = msg['sender'] == 'user';

                          return Align(
                            alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.all(12),
                              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
                              decoration: BoxDecoration(
                                color: isUser ? Colors.blueAccent : const Color(0xFFD9E4FF),
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(16),
                                  topRight: const Radius.circular(16),
                                  bottomLeft: Radius.circular(isUser ? 16 : 0),
                                  bottomRight: Radius.circular(isUser ? 0 : 16),
                                ),
                              ),
                              child: Text(
                                msg['text']!,
                                style: TextStyle(
                                  color: isUser ? Colors.white : Colors.black87,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    if (isLoading) const Padding(
                      padding: EdgeInsets.all(12),
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _chatController,
                              decoration: InputDecoration(
                                hintText: "Tulis pesan...",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () {
                              final msg = _chatController.text.trim();
                              if (msg.isNotEmpty) {
                                sendToVee(msg);
                                _chatController.clear();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => VeeChatPrompt._showChatModal(context),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Ketik yang anda pikirkan...",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            CheckClicked(),

          ],
        ),
      ),
    );
  }
}



class MicClicked extends StatefulWidget {
  const MicClicked({super.key});

  @override
  State<MicClicked> createState() => _MicClickedState();
}

class _MicClickedState extends State<MicClicked> {
  bool Clicked = false;
  @override
  Widget build(BuildContext context) {
    return
    AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Clicked ? Colors.blue : Colors.white
      ),
      child: InkWell(
        child: Icon(
            Icons.mic,size: 32,color: Clicked ? Colors.white : Colors.black,
        ),
        onTap: () {
          setState(() {
            if(Clicked == true){
              Clicked = false;
            }else{
              Clicked = true;
            }
          });
        },
      )
    );
  }
}

Widget CheckClicked(){
  return MicClicked();
}

class RobotWithBubble extends StatelessWidget {
  final String robotImagePath;

  const RobotWithBubble({
    required this.robotImagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Robot image
        Container(
          height: 130,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage(
                      robotImagePath
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),

        Positioned(
          top: -20,
          left: 40,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(51, 189, 196, 1),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  final List<String> categories = ['Semua', 'Keseimbangan', 'Ekonomi', 'Potensi', 'Publik'];
  String selectedCategory = 'Semua';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final String category = categories[index];
          final bool isSelected = category == selectedCategory;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ?  const Color.fromRGBO(253, 137, 22, 1)
                    : const Color.fromRGBO(120, 209, 196, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizeSmall(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
class PublikCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool iconOnLeft;

  const PublikCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.iconOnLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    final image = Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );

    final text = Expanded(
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',
          fontSize: 14,
          color: Colors.black,
        ),
        textAlign: iconOnLeft ? TextAlign.right : TextAlign.left,
      ),
    );

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFFCE486),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: iconOnLeft ? [image, const SizedBox(width: 8), text] : [text, const SizedBox(width: 8), image],
      ),
    );
  }
}
class ZonaPublikSection extends StatelessWidget {
  const ZonaPublikSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Komunitas", "img": "assets/img/komunitas--.png"},
      {"title": "    Layanan\n    Umum ", "img": "assets/img/layanan umum2.png"},
      {"title": "Kolaborasi", "img": "assets/img/kolaborasi2.png"},
      {"title": "     Acara", "img": "assets/img/acara.png"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: CBackground3(),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.brown.shade200,
                      offset: Offset(0, 0),
                      blurRadius: 0.1)
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 140, top: 8, bottom: 12, left: 1),
                  child: Text(
                    "ZONA PUBLIK",
                    style: TextStyle(
                      color: CBlack(),
                      fontFamily: 'Poppins-Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.9,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(items.length, (index) {
                    final item = items[index];
                    return PublikCard(
                      title: item["title"]!,
                      imagePath: item["img"]!,
                      iconOnLeft: index % 2 == 0,
                    );
                  }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}