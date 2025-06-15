import 'package:flutter/material.dart';
import 'package:motivee/Constant/Size.dart';
import '../../Constant/Color.dart';

class Spiritual extends StatelessWidget {
  const Spiritual({super.key});

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
              children: [
                Text("Spiritual",
                style: TextStyle(
                  fontSize: TitleSize(),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),),
                Text(" & ",
                  style: TextStyle(
                      fontSize: TitleSize(),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'
                  ),
                ),
                Text("Kontribusi",
                    style: TextStyle(
                    fontSize: TitleSize(),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                ),)
              ],
            ),
            _buildIntroBanner(),
            const SizedBox(height: 20),
            _buildTopButtons(),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    child: _buildCardSection(
                        title: 'Ibadah & Aksi Kebaikan',
                        buttons: [
                          'Jurnal Sholat & Puasa',
                          'Al Qur an & Hadis Pilihan',
                          'Pusat Dzikir & Doa',
                          'Sedekah, Zakat & Aksi Sosial',
                        ],
                        color: Colors.deepPurple,
                        assetsImage: 'assets/img/Jurnal Ibadah.png'
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: _buildCardSection(
                      title: 'Langkah Spiritual & Kontribusi',
                      buttons: [
                        'Tes E-Spirit',
                        'PencapaianKu',
                        'Panduan',
                        'Progres',
                      ],
                      color: Colors.redAccent,
                      assetsImage: 'assets/img/Level.png'
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20),
            Text("        Konsultasi Ahli", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'Poppins-Bold'
            ),
            ),
            KonsultasiAhli(),
            const SizedBox(height: 20),
            menujuKomunitasButton(context)
          ],
        ),
      ),
    );
  }

  Widget _buildIntroBanner() {
    return Container(
      decoration: BoxDecoration(
        color: CBackground(),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 80,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/img/spiritual pendek.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Temukan ketenangan lewat ibadah, dzikir, syukur dan amal baik.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Teruslah membangun hubungan yang hangat dengan Allah SWT, langkah demi langkah sesuai ritme hidupmu.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Jadilah versi terbaikmu yg ikhlas & selalu terhubung dengan-Nya.',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTopButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: CBackground2(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: _iconImageButton('Ruang \nIlmu', 'assets/img/Ilmu agama.png')),
          Expanded(
              flex: 1,
              child: _iconImageButton('Inspirasi \nSpiritual', 'assets/img/Inspirasi Islam.png')),
          Expanded(
              flex: 1,
              child: _iconImageButton('Inspirasi \nKebaikan', 'assets/img/Syukur & Amal harian.png')),
        ],
      ),
    );
  }



  Widget _iconImageButton(String label, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Container(
        width: 100,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 40,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            imagePath
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                   ),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget KonsultasiAhli(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: CBackground2(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 5),
                  child: ContainerKonsultasiAhli(title: "Ustadz", AssetImages: "assets/img/Konsultasi ahli.png", right: true),
                )
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 20),
                    child: ContainerKonsultasiAhli(title: "Ustadzah", AssetImages: "assets/img/Konsultasi ahli.png", right: true),
                  )
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 5),
                    child: ContainerKonsultasiAhli(title: "Ahli Fikih \n& Ibadah", AssetImages: "assets/img/Konsultasi ahli.png", right: true),
                  )
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 15),
                    child: ContainerKonsultasiAhli(title: "Relawan Sosial Islami", AssetImages: "assets/img/Konsultasi ahli.png", right: true),
                  )
              ),
            ],
          ),
        ],
      ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/img/Konsultasi ahli.png'),
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
  Widget ContainerKonsultasiAhli({required String title, required String AssetImages, required bool right}){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CKonsultasi(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: right ?
        Row(
          children: [
            Expanded(
              child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 14
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          AssetImages
                      )
                  )
              ),
            )
          ],
        )
            :
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          AssetImages
                      )
                  )
              ),
            ),
            Expanded(
              child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 12
              ),),
            ),

          ],
        ),
      ),
    );
  }
  Widget _buildCardSection({required String title, required List<String> buttons, required Color color,required String assetsImage}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CBackground2(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(assetsImage),
                fit: BoxFit.cover
              )
            ),
          ),
          const SizedBox(height: 3),
          Text(title, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            fontFamily: 'Poppins-Bold'
          ),
              textAlign: TextAlign.center),
          const SizedBox(height: 10),
          ...buttons.map((b) => Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10)
              ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(b,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto-bold',
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            )
            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(backgroundColor: color),
            //   onPressed: () {},
            //   child: Text(b,
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontFamily: 'Roboto',
            //       fontSize: 12
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ))
        ],
      ),
    );
  }

  Widget _buildConsultationSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CBackground2(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Konsultasi Ahli', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2.8,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _consultButton('Ustadz'),
              _consultButton('Ustadzah'),
              _consultButton('Ahli Fikih & Ibadah'),
              _consultButton('Relawan Sosial Islami'),
            ],
          ),
          const SizedBox(height: 12),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.group),
              label: const Text('Menuju Komunitas'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal.shade600),
            ),
          )
        ],
      ),
    );
  }

  Widget _consultButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey.shade700),
      child: Text(title, style: const TextStyle(fontSize: 13)),
    );
  }
}
