import 'package:flutter/material.dart';
import 'package:lat_kuis/models/data.dart';      // ganti "kuis_coba" = nama project, "data.dart" = file data menu

// ===== HALAMAN DETAIL =====
// Menerima 1 data menu dari HomePage, terus tampilkan detailnya
class DetailPage extends StatelessWidget {
  final Buku buku;                                // ganti "Menu" = nama class data kamu (misal Buku, Product)

  const DetailPage({super.key, required this.buku});   // ganti "menu" = nama variabel, sesuaikan sama di atas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ===== APPBAR =====
      appBar: AppBar(title: Text(buku.judul)),     // ganti "menu.name" = field judul (misal menu.judul)

      // ===== ISI HALAMAN =====
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== GAMBAR BESAR =====
          Image.network(                          // ganti jadi Image.asset kalau gambar dari folder assets
            buku.cover,                           // ganti "menu.image" = field gambar
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),

          // ===== NAMA / JUDUL =====
          Text(
            buku.judul,                            // ganti "menu.name" = field judul
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),

          // ===== KATEGORI =====
          Text(buku.genre),                    // ganti "menu.category" = field kategori
          SizedBox(height: 8),

          // ===== HARGA =====
          Text(
            buku.tahun,                           // ganti "menu.price" = field harga
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 16),

          // ===== JUDUL DESKRIPSI =====
          Text(
            "Sinopsis",                          // ganti "Deskripsi" = judul bagian deskripsi
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),

          // ===== ISI DESKRIPSI =====
          Text(buku.sinopsis),                 // ganti "menu.description" = field deskripsi
        ],
      ),
    );
  }
}