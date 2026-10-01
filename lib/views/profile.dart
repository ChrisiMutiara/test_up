// Import widget dasar Flutter (Scaffold, Text, Icon, dll)
import 'package:flutter/material.dart';

// Import halaman Login — buat tujuan setelah Logout diklik
import 'package:lat_kuis/views/login.dart';

// Import data user — buat ambil "Jokowi" (user1.name)
import 'package:lat_kuis/models/data.dart';


// ===== HALAMAN PROFIL =====
// Halaman ini nampilin: avatar, username, nama lengkap, tombol logout
class ProfilePage extends StatelessWidget {

  // Variabel "username" — nerima data dari halaman sebelumnya (dari Login)
  // Isinya misal "admingacoan"
  final String username;

  // Constructor — wajib diisi waktu halaman ini dibuka
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,   // Semua isi di tengah
        children: [

          // ===== 1. AVATAR =====
          // Nampilin ikon orang (sebagai foto profil)
          Icon(Icons.person, size: 100),

          // Jarak 16 pixel
          SizedBox(height: 16),

          // ===== 2. LABEL "USERNAME" =====
          // Tulisan kecil "Username" di atas
          Text("Username"),

          // Jarak 4 pixel
          SizedBox(height: 4),

          // ===== 3. ISI USERNAME =====
          // Nampilin username dari Login (misal "admingacoan")
          Text(
            username,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          // Jarak 8 pixel (biar nama di bawahnya rapat)
          SizedBox(height: 8),

          // ===== 4. NAMA LENGKAP =====
          // Nampilin "Jokowi" — diambil dari data.dart (user1.name)
          Text(
            user1.name,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          // Jarak 24 pixel (biar tombol Logout agak jauh)
          SizedBox(height: 24),

          // ===== 5. TOMBOL LOGOUT =====
          // Kalau diklik → balik ke halaman Login + hapus semua riwayat halaman
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,   // ini yang bikin nggak bisa back ke Home
              );
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}