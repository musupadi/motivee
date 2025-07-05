import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:motivee/Constant/Route.dart'; // Ensure toSpiritual is defined here

import '../Constant/Color.dart';
import '../Constant/PeakCarousel.dart';
import '../Constant/Size.dart';

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
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment(1.0, 0.2),
          colors: [
            Color(0xFF48F3FF),
            Color(0xFFACDECE),
          ],
        ),
      ),
        child: ListView(
          children: [
            const SizedBox(height: 12),

            // ✅ Chatbot box muncul pertama
            // 🔹 1. Chatbot section
            // 🔹 1. Chatbot Vee
            // 🔹 1. Chatbot section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Stack(
                clipBehavior: Clip.none,
                children: [

                  Container(
                    margin: const EdgeInsets.only(left: 90),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDBF4FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VeeChatPrompt(),
                    ),
                  ),
                  //
                  Positioned(
                    left: 0,
                    top: 0,
                    child: RobotWithBubble(
                      robotImagePath: 'assets/img/botvee2.png',
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 24),

// 🔹 2. Motivasi box dan booster image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kotak biru teks
                  Expanded(
                    child: Container(
                      height: 80,
                      width: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 173, 181, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Motivasi, Do'a, Tips, Trik & Afirmasi",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 14,
                            ),

                          ),
                          Align(
                            alignment: Alignment.center,
                            child: const Text(
                              "Harian",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: const Text(
                              "Selengkapnya...",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/img/veeboost.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

// 🔹 3. PeekCarousel (Slider)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PeekCarousel(),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: Text(
                "ZONA KESEIMBANGAN HIDUP",
                style: TextStyle(
                    color: CBlack(),
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: CBackground2(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.1,
                  children: [
                    // --- Daftar Kartu BalanceZoneCard Anda ---
                    InkWell(
                      onTap: () { toSpiritual(context, false); },
                      child: BalanceZoneCard(
                        title: "Spiritual & Kontribusi",
                        imagePath: "assets/img/spiritual--.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CSpiritual(),
                      ),
                    ),
                    InkWell(
                      child: BalanceZoneCard(
                        title: "Kesehatan Fisik & Mental",
                        imagePath: "assets/img/kesehatan fisik.png",
                        current: 6,
                        total: 10,
                        backgroundColor: CKesehatan(),
                      ),
                    ),
                    InkWell(
                      child: BalanceZoneCard(
                        title: "Hubungan Sosial",
                        imagePath: "assets/img/komunitas--.png",
                        current: 10,
                        total: 15,
                        backgroundColor: CHubunganSosial(),
                      ),
                    ),
                    InkWell(

                      child: BalanceZoneCard(
                        title: "Finansial",
                        imagePath: "assets/img/koin.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CFinansial(),
                      ),
                    ),
                    InkWell(

                      child: BalanceZoneCard(
                        title: "Pengembangan Diri & Kreativitas",
                        imagePath: "assets/img/pengembangan2.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CPengembanganDiri(),
                      ),
                    ),
                    InkWell(

                      child: BalanceZoneCard(
                        title: "Pekerjaan & Karir",
                        imagePath: "assets/img/pekerjaan2.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CPekerjaanKarir(),
                      ),
                    ),
                    InkWell(

                      child: BalanceZoneCard(
                        title: "Hunian & Lingkungan",
                        imagePath: "assets/img/hunian2.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CHunian(),
                      ),
                    ),
                    InkWell(

                      child: BalanceZoneCard(
                        title: "Rekreasi & Relaksasi",
                        imagePath: "assets/img/rekreasi2i.png",
                        current: 5,
                        total: 10,
                        backgroundColor: CRekreasi(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Text(
                "ZONA PRODUKTIVITAS",
                style: TextStyle(
                    color: CBlack(),
                    fontWeight: FontWeight.w900,
                    fontSize: TitleSize()
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4,bottom: 4,top: 0,left: 8),
                        child: _ProductivityItem(title: 'Rencana', imagePath: 'assets/img/rencana2.png'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 4,top: 0,right: 8),
                        child: _ProductivityItem(title: 'Agenda', imagePath: 'assets/img/agenda.png'),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8,top: 4,right: 4),
                        child: _ProductivityItem(title: 'Aktivitas', imagePath: 'assets/img/aktivitas.png'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 8,top: 4,right: 8),
                        child: _ProductivityItem(title: 'Catatan', imagePath: 'assets/img/catatan2.png'),
                      ),
                    )
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Text(
                "ZONA EKONOMI",
                style: TextStyle(
                    color: CBlack(),
                    fontWeight: FontWeight.bold,
                    fontSize: TitleSize()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                      padding: const EdgeInsets.only(top: 10,right: 5,left: 5,bottom: 10),
                      decoration: BoxDecoration(
                        color: CBackground2(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: const [
                          EconomyCard(
                            title: "Dompetku",
                            imagePath: "assets/img/dompetku.png",
                          ),
                          EconomyCard(
                            title: "Lapak MotiVee",
                            imagePath: "assets/img/lapak.png",
                          ),
                          EconomyCard(
                            title: "Cuan Dari Rumah",
                            imagePath: "assets/img/cuan.png",
                          ),
                          EconomyCard(
                            title: "Pojok UMKM",
                            imagePath: "assets/img/pojok umkm2.png",
                          ),
                        ],
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SponsorCard(imagePath: "assets/img/Klinik Aliyya.png"),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: ZonaPotensiSection(),
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
          ],
        ),
      ),
    );
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


class EconomyCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const EconomyCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: (MediaQuery.of(context).size.width - 54) / 2, // 2 column,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(250, 60, 46, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Text
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 12),
          // Icon/Image
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),


        ],
      ),
    );
  }
}

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
    final progressBarValueColor = backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    List<String> titleParts = title.split(' & ');


    const double iconSize = 50;
    const double iconOverlap = 20;

    return Container(


      width: (MediaQuery.of(context).size.width - 68) / 2,

      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment(1.0, 0.6),
            colors: [
              Color.fromRGBO(161, 219, 255, 1.0),
              Color.fromRGBO(113, 179, 255, 1.0),
            ],
          ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Konten Utama Kartu (Teks & Progress Bar)
          Container(
            // Memberikan padding untuk konten agar tidak tumpang tindih dengan ikon
            // Kiri & Atas: (Ukuran ikon yang overlap) + margin internal
            padding: const EdgeInsets.fromLTRB(iconOverlap + 12, iconOverlap + 12, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Tinggi Column menyesuaikan konten
              crossAxisAlignment: CrossAxisAlignment.start, // Ratakan konten ke kiri
              children: [
                // Bagian Judul (Teks)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleParts[0],
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1, // Pastikan hanya satu baris
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (titleParts.length > 1) // Jika ada baris kedua
                      Text(
                        titleParts[1],
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1, // Pastikan hanya satu baris
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),

                const SizedBox(height: 12),


                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$current/$total",
                      style: TextStyle(color: secondaryTextColor, fontSize: 12),
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
            bottom: 40,
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
            "Upgrade Premium",
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

  // Made _showChatModal a static method of VeeChatPrompt
  static void _showChatModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img/vee_robot.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Halo Bang Piyo! Aku Vee siap bantu ✨",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Text(
                    "Tulis apa saja yang kamu butuhkan...\nContoh: 'Bantu saya buat jadwal hari ini!'",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ketik pesan...",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: const Icon(Icons.send),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
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
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Senang Bertemu lagi Bang Piyo",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Lato'
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              "Vee siap menemani dan membantu kapanpun kamu butuh 🤝",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Roboto'
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Row( // Added const
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Ketik yang anda pikirkan......",
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.grey, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/img/mic1.png',
                      width: 32,
                      height: 32,
                    ),
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
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
          fontSize: 13,
          color: Colors.white,
        ),
        textAlign: iconOnLeft ? TextAlign.right : TextAlign.left,
      ),
    );

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 23, 99, 1),
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
      {"title": "Layanan Umum", "img": "assets/img/layanan umum2.png"},
      {"title": "Kolaborasi", "img": "assets/img/kolaborasi2.png"},
      {"title": "Acara", "img": "assets/img/acara.png"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "ZONA PUBLIK",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: CBackground2(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: GridView.count(
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
        ),
      ],
    );
  }
}

class PotensiCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool iconOnRight;

  const PotensiCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.iconOnRight = false,
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
          fontSize: 13,
        ),
        textAlign: iconOnRight ? TextAlign.right : TextAlign.left,
      ),
    );

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(205,214, 51, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: iconOnRight ? [text, const SizedBox(width: 8), image] : [image, const SizedBox(width: 8), text],
      ),
    );
  }
}
class ZonaPotensiSection extends StatelessWidget {
  const ZonaPotensiSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Tes & Tantangan", "img": "assets/img/multi tes.png"},
      {"title": "VEE Akademi", "img": "assets/img/vee akademi2.png"},
      {"title": "Video & Artikel", "img": "assets/img/artikel.png"},
      {"title": "Berita", "img": "assets/img/berita.png"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "ZONA POTENSI",
            style: TextStyle(
              color: CBlack(),
              fontWeight: FontWeight.bold,
              fontSize: TitleSize(),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: CBackground2(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.9,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(items.length, (index) {
              final item = items[index];
              return PotensiCard(
                title: item["title"]!,
                imagePath: item["img"]!,
                iconOnRight: index % 2 == 1,
              );
            }),
          ),
        ),
      ],
    );
  }
}