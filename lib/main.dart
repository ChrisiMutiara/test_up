import 'package:flutter/material.dart';
import 'package:lat_kuis/views/login.dart';       // ganti "login.dart" = file halaman pertama yang muncul

// ===== FUNGSI UTAMA =====
// Titik masuk (entry point) aplikasi — dijalankan pertama kali
void main() {
  runApp(const MainApp());
}

// ===== WIDGET ROOT =====
// Pembungkus utama aplikasi (ngatur tema, halaman pertama, dll)
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // ===== HILANGIN BANNER DEBUG =====
      debugShowCheckedModeBanner: false,           // true kalau mau lihat pita "DEBUG" di pojok

      // ===== HALAMAN PERTAMA =====
      home: LoginPage(),                           // ganti "LoginPage" = halaman yang muncul pertama kali
    );
  }
}