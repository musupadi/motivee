
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';

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
          color: CBackground(), // Netral lembut
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 5),
            CategorySelector(),
            const SizedBox(height: 24),
            RunningHeader(),
            const SizedBox(height: 24),
            PeekCarousel(),
            const SizedBox(height: 24),
            Row(
              children: [
                RobotWithBubble(
                  robotImagePath: 'assets/img/wajah robot futuristik.png',
                  bubbleImagePath: 'assets/img/tap & talk.png',
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(child: VeeChatPrompt()),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              "ZONA KEHIDUPAN",
              style: TextStyle(
                color: CWhite(),
                fontWeight: FontWeight.bold,
                fontSize: TitleSize()
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: const [
                _ProductivityItem(title: 'Agenda', imagePath: 'assets/img/agenda.png'),
                _ProductivityItem(title: 'Rencana', imagePath: 'assets/img/rencana.png'),
                _ProductivityItem(title: 'Aktivitas', imagePath: 'assets/img/aktivitas.png'),
                _ProductivityItem(title: 'Catatan', imagePath: 'assets/img/catatan.png'),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              "ZONA KESEIMBANGAN HIDUP",
              style: TextStyle(
                  color: CWhite(),
                  fontWeight: FontWeight.bold,
                  fontSize: TitleSize()
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
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
                    mainAxisSpacing: 12,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.85, // sesuaikan tinggi-lebar card
                    children: [
                      BalanceZoneCard(
                        title: "Spiritual & Kontribusi",
                        imagePath: "assets/img/spiritual pendek.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CSpiritual(),
                      ),
                      BalanceZoneCard(
                        title: "Kesehatan Fisik & Mental",
                        imagePath: "assets/img/kesehatan fisik.png",
                        current: 6,
                        total: 10,
                        backgroundColor:CKesehatan(),
                      ),
                      BalanceZoneCard(
                        title: "Hubungan Sosial",
                        imagePath: "assets/img/hub sosial.png",
                        current: 10,
                        total: 15,
                        backgroundColor: CHubunganSosial(),
                      ),
                      BalanceZoneCard(
                        title: "Finansial",
                        imagePath: "assets/img/keuangan.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CFinansial(),
                      ),
                      BalanceZoneCard(
                        title: "Pengembangan Diri & Kreativitas",
                        imagePath: "assets/img/pengembangan.png",
                        current: 5,
                        total: 10,
                        backgroundColor: CPengembanganDiri(),
                      ),
                      BalanceZoneCard(
                        title: "Pekerjaan & Karir",
                        imagePath: "assets/img/pekerjaan.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CPekerjaanKarir(),
                      ),
                      BalanceZoneCard(
                        title: "Hunian & Lingkungan",
                        imagePath: "assets/img/hunian.png",
                        current: 7,
                        total: 10,
                        backgroundColor: CHunian(),
                      ),
                      BalanceZoneCard(
                        title: "Rekreasi & Relaksasi",
                        imagePath: "assets/img/rekreasi.png",
                        current: 5,
                        total: 10,
                        backgroundColor: CRekreasi(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "ZONA EKONOMI",
              style: TextStyle(
                  color: CWhite(),
                  fontWeight: FontWeight.bold,
                  fontSize: TitleSize()
              ),
            ),
            SafeArea(
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
                        imagePath: "assets/img/pojok UMKM.png",
                      ),
                    ],
                  )
                ),
              ),
            ),
            const SizedBox(height: 24),
            SponsorCard(imagePath: "assets/img/gambar motivee diluncurkan.png"),
            const SizedBox(height: 24),
            ZonaPotensiSection(),
            const SizedBox(height: 24),
            PremiumUpgradeButton(),
            const SizedBox(height: 24),
            ZonaPublikSection(),
            const SizedBox(height: 24),
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

  BalanceZoneCard({
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

    return Container(
      width: (MediaQuery.of(context).size.width - 48) / 2,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover
                    )
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text(
                  "$current/$total",
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 6,
                  ),
                ),
              ],
            ),
          )
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
      height: 100,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFFFD54F),
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
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFECB3), // light yellow
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.star, size: 18, color: Color(0xFFFFC001)),
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showChatModal(context),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Selamat datang kembali Bang Piyo!\nSaya Vee, Sahabat AI anda yang siap membantu kapan saja !!!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D1A64),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: "Ketik yang anda pikirkan ........",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showChatModal(BuildContext context) {
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
              const SizedBox(height: 20),
              // 🔼 Gambar robot
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img/vee_robot.png'), // kamu atur
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
                    suffixIcon: Icon(Icons.send),
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
}
class RunningHeader extends StatelessWidget {
  const RunningHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // supaya rata atas
        children: [
          // Akunku
          SizedBox(
            width: 60,
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/img/akunku.png"),
                ),
                SizedBox(height: 4),
                Text('Akunku', style: TextStyle(fontSize: 12, color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(width: 4),

          // Marquee
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 36,
                margin: const EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A6D73),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                child: Marquee(
                  text: 'MOTIVASI, DO’A, TIPS, TRIK & AFIRMASI HARIAN',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  blankSpace: 40,
                  velocity: 30,
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),

          // VeeBoost
          SizedBox(
            width: 60,
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/img/boster.png"),
                ),
                SizedBox(height: 4),
                Text('VeeBoost', style: TextStyle(fontSize: 12, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RobotWithBubble extends StatelessWidget {
  final String robotImagePath;
  final String bubbleImagePath;

  const RobotWithBubble({
    super.key,
    required this.robotImagePath,
    required this.bubbleImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 160,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Gambar robot utama
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image: AssetImage(
                    robotImagePath,
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          // Logo "TAP AND TALK"
          Positioned(
            bottom: 35,
            right: -10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                      image: AssetImage(
                        bubbleImagePath,
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
        ],
      ),
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
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.yellow
                    : const Color.fromRGBO(23, 97, 110, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
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
      {"title": "Komunitas", "img": "assets/img/komunitas.png"},
      {"title": "Layanan Umum", "img": "assets/img/layanan umum.png"},
      {"title": "Kolaborasi", "img": "assets/img/kolaborasi.png"},
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
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
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
              return PublikCard(
                title: item["title"]!,
                imagePath: item["img"]!,
                iconOnLeft: index % 2 == 0, // kiri kalau genap (kiri)
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
        color: const Color.fromRGBO(223, 228, 51, 1),
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
      {"title": "VEE Akademi", "img": "assets/img/vee akademi.png"},
      {"title": "Video & Artikel", "img": "assets/img/artikel.png"},
      {"title": "Berita", "img": "assets/img/berita.png"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ZONA POTENSI",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: TitleSize(),
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
                iconOnRight: index % 2 == 1, // kanan kalau ganjil
              );
            }),
          ),
        ),
      ],
    );
  }
}
