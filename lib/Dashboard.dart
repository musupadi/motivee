import 'package:flutter/material.dart';
import 'package:motivee/Home/Finansial/Finansial.dart';
import 'package:motivee/Home/HubunganSosial/Sosial.dart';
import 'package:motivee/Home/Hunian/Hunian.dart';
import 'package:motivee/Home/KesehatanFisik/FisikDanMental.dart';
import 'package:motivee/Home/Pekerjaan/Pekerjaan.dart';
import 'package:motivee/Home/PengembanganDiri/PengembanganDiri.dart';
import 'package:motivee/Home/Rekreasi/Rekreasi.dart';
import 'package:motivee/Home/ZonaKeseimbaganHidup/Spiritual.dart';

import 'Home/Home.dart';

class Dashboard extends StatefulWidget {
  final String page;
  Dashboard({super.key,required this.page});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Spirituals = [
    Spiritual(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Kesehatan = [
    FisikDanMental(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Finansials = [
    Finansial(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Sosials = [
    Sosial(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Pengembangans = [
    PengembanganDiri(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Pekerjaans = [
    Pekerjaan(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Hunians = [
    Hunian(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];
  final List<Widget> Rekreasis = [
    Rekreasi(),
    Text("Aktivitas"),
    Text("Premium"),
    Text("Komunitas"),
    Text("Pengaturan"),
  ];



  // Warna calm dan pastel
  final Color bgColor = Color(0xFFF7F6F2); // putih susu
  final Color selectedColor = Color(0xFF00C4B4); // hijau toska lembut
  final Color unselectedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body:
      widget.page == "Spiritual" ? Spirituals[_currentIndex]  :
      widget.page == "Kesehatan" ? Kesehatan[_currentIndex] :
      widget.page == "Finansial" ? Finansials[_currentIndex] :
      widget.page == "Sosial" ? Sosials[_currentIndex] :
      widget.page == "Pengembangan" ? Pengembangans[_currentIndex] :
      widget.page == "Pekerjaan" ? Pekerjaans[_currentIndex] :
      widget.page == "Hunian" ? Hunians[_currentIndex] :
      widget.page == "Rekreasi" ? Rekreasis[_currentIndex] :
      _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 11,
        ),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage("assets/img/beranda.png"),
                    fit: BoxFit.cover
                  )
                ),
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/notifikasi 2.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Notifikasi",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/bot_app.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Vee",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/Pintasan.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Pintasan",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/akunku.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Akunku",
          ),
        ],
      ),
    );
  }
}