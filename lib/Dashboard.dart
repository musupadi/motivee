import 'package:flutter/material.dart';

import 'Home/Home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Home(),
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
      body: _pages[_currentIndex],
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
                      image: AssetImage("assets/img/notifikasi.png"),
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
                      image: AssetImage("assets/img/tutorial.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Tutorial",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/bantuan.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Bantuan",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/img/komunitas.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            label: "Pintasan",
          ),
        ],
      ),
    );
  }
}