import 'package:flutter/material.dart';
import 'package:lat_kuis/models/data.dart';       // ganti "kuis_coba" = nama project, "data.dart" = file data menu
import 'package:lat_kuis/views/detail.dart';      // ganti "detail.dart" = file halaman detail

// ===== HALAMAN HOME (KATALOG + SEARCH + FILTER) =====
// StatefulWidget karena tampilannya berubah (search & filter)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ===== CONTROLLER SEARCH =====
  final TextEditingController searchController = TextEditingController();

  // ===== STATE SEARCH & FILTER =====
  String keyword = "";                    // nyimpen teks search, ganti nama variabel kalau perlu
  String kategoriTerpilih = "Semua";      // kategori yang aktif, ganti "Semua" = default kategori

  @override
  Widget build(BuildContext context) {
    // ===== FILTER MENU =====
    // Ambil menu yang nama-nya mengandung keyword & kategori-nya cocok
    List<Buku> hasilFilter = bukus.where((buku) {        // ganti "Menu" & "menus" = class & list data kamu
      bool cocokNama = buku.judul.toLowerCase().contains(keyword.toLowerCase());   // ganti "name" = field judul
      bool cocokKategori = kategoriTerpilih == "Semua" || buku.genre== kategoriTerpilih;  // ganti "category" = field kategori
      return cocokNama && cocokKategori;
    }).toList();

    return Column(
      children: [
        // ===== SEARCH BAR =====
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: searchController,
            onChanged: (value) {
              setState(() {
                keyword = value;            // update keyword tiap kali user ngetik
              });
            },
            decoration: InputDecoration(
              hintText: "Cari buku...",     // ganti hint search
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),

        // ===== TOMBOL FILTER KATEGORI =====
        // Setiap tombol = 1 kategori. Tambah/kurangi tombol sesuai data kamu
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              // ===== TOMBOL "SEMUA" =====
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    kategoriTerpilih = "Semua";     // ganti "Semua" = nama kategori default
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kategoriTerpilih == "Semua" ? Colors.pink[100] : Colors.grey[300],   // ganti warna aktif/nonaktif
                ),
                child: Text("Semua"),           // ganti teks tombol
              ),
              SizedBox(width: 8),

              // ===== TOMBOL "MIE" =====
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    kategoriTerpilih = "Novel";   // ganti "Mie" = nama kategori kamu
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kategoriTerpilih == "Novel" ? Colors.pink[100] : Colors.grey[300],
                ),
                child: Text("Novel"),             // ganti teks tombol
              ),
              SizedBox(width: 8),

              // ===== TOMBOL "DIMSUM" =====
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    kategoriTerpilih = "Non-Fiksi";   // ganti "Dimsum" = nama kategori kamu
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kategoriTerpilih == "Non-Fiksi" ? Colors.pink[100] : Colors.grey[300],
                ),
                child: Text("Non-Fiksi"),          // ganti teks tombol
              ),
              SizedBox(width: 8),

              // ===== TOMBOL "MINUMAN" =====
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    kategoriTerpilih = "Komik";   // ganti "Minuman" = nama kategori kamu
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kategoriTerpilih == "Komik" ? Colors.pink[100] : Colors.grey[300],
                ),
                child: Text("Komik"),         // ganti teks tombol
              ),
            ],
          ),
        ),

        SizedBox(height: 8),

        // ===== LIST MENU HASIL FILTER =====
        Expanded(
          child: hasilFilter.isEmpty
              ? Center(child: Text("Buku tidak ditemukan"))    // ganti pesan kalau hasil kosong
              : ListView.builder(
                  itemCount: hasilFilter.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      // ===== AKSI SAAT DIKLIK =====
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(buku: hasilFilter[index]),   // ganti "DetailPage" = halaman tujuan
                          ),
                        );
                      },

                      // ===== NAMA MENU =====
                      title: Text(hasilFilter[index].judul),         // ganti "name" = field judul

                      // ===== KATEGORI & HARGA =====
                      subtitle: Text("${hasilFilter[index].genre} - ${hasilFilter[index].penulis}"),   // ganti "category" & "price"

                      // ===== GAMBAR KECIL =====
                      leading: Image.network(                       // ganti jadi Image.asset kalau gambar lokal
                        hasilFilter[index].cover,                   // ganti "image" = field gambar
                        width: 50,
                        height: 50,
                      ),

                      // ===== IKON PANAH =====
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  },
                ),
        ),
      ],
    );
  }
}