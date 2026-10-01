import 'package:flutter/material.dart';
import 'package:lat_kuis/views/home.dart';         // ganti "home.dart" = file halaman Home
import 'package:lat_kuis/views/profile.dart';      // ganti "profile.dart" = file halaman Profile

// ===== WIDGET ROOT =====
// Pembungkus yang nampilin Home & Profile, dengan navigasi bawah (tab)
class Root extends StatefulWidget {
  final String username;                            // data username dari login, buat diteruskan ke Profile

  const Root({super.key, required this.username});  // ganti "username" = nama variabel, sesuaikan sama di atas

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIndex = 0;                            // index tab yang aktif (0 = Home, 1 = Profile)

  @override
  Widget build(BuildContext context) {
    // ===== DAFTAR HALAMAN =====
    // 1 halaman = 1 tab. Urutan harus sama dengan urutan di BottomNavigationBar
    List<Widget> pages = [
      HomePage(),                                   // tab ke-0: Home
      ProfilePage(username: widget.username),       // tab ke-1: Profile, kirim username
    ];

    return Scaffold(
      // ===== APPBAR =====
      appBar: AppBar(title: Text("Home Page")),     // ganti judul AppBar

      // ===== ISI HALAMAN =====
      // Nampilin halaman sesuai tab yang aktif
      body: pages[selectedIndex],

      // ===== NAVIGASI BAWAH (TAB) =====
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,                // tab yang lagi aktif
        onTap: (value) {
          setState(() {
            selectedIndex = value;                  // pindah tab pas diklik
          });
        },
        items: [
          // ===== TAB HOME =====
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),      // ganti ikon & label

          // ===== TAB PROFILE =====
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"), // ganti ikon & label
        ],
      ),
    );
  }
}