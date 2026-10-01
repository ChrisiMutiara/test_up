class User {
  String username;
  String password;
  String name;

  User({required this.username, required this.password, required this.name});
}

User user1 = User(username: "adminbuku", password: "1234", name: "Budi");

class Buku {
  int id;
  String judul;
  String genre;
  String penulis;
  String tahun;
  String sinopsis;
  String cover;

  Buku({
    required this.id,
    required this.judul,
    required this.genre,
    required this.penulis,
    required this.tahun,
    required this.sinopsis,
    required this.cover,
  });
}

final List<Buku> bukus = [
  Buku(
    id: 1,
    judul: "Laskar Pelangi",
    genre: "Novel",
    penulis: "Andrea Hirata",
    tahun: "2005",
    cover: "https://images.unsplash.com/photo-1544947950-fa07a98d237f",
    sinopsis: "Kisah anak-anak Belitung yang berjuang mengejar pendidikan.",
  ),
  Buku(
    id: 2,
    judul: "Bumi Manusia",
    genre: "Novel",
    penulis: "Pramoedya Ananta Toer",
    tahun: "1980",
    cover: "https://images.unsplash.com/photo-1512820790803-83ca734da794",
    sinopsis: "Kisah Minke di era kolonial Belanda yang penuh gejolak.",
  ),
  Buku(
    id: 3,
    judul: "Filosofi Teras",
    genre: "Non-Fiksi",
    penulis: "Henry Manampiring",
    tahun: "2018",
    cover: "https://images.unsplash.com/photo-1543002588-bfa74002ed7e",
    sinopsis: "Pengantar filsafat Stoa untuk kehidupan modern sehari-hari.",
  ),
  Buku(
    id: 4,
    judul: "Sapiens",
    genre: "Non-Fiksi",
    penulis: "Yuval Noah Harari",
    tahun: "2011",
    cover: "https://images.unsplash.com/photo-1495446815901-a7297e633e8d",
    sinopsis: "Sejarah singkat umat manusia dari zaman purba hingga modern.",
  ),
  Buku(
    id: 5,
    judul: "One Piece Vol. 1",
    genre: "Komik",
    penulis: "Eiichiro Oda",
    tahun: "1997",
    cover: "https://images.unsplash.com/photo-1612036782180-6f0b6cd846fe",
    sinopsis: "Petualangan Luffy mencari harta karun One Piece.",
  ),
  Buku(
    id: 6,
    judul: "Naruto Vol. 1",
    genre: "Komik",
    penulis: "Masashi Kishimoto",
    tahun: "1999",
    cover: "https://images.unsplash.com/photo-1607604276583-eef5d076aa5f",
    sinopsis: "Kisah Naruto bercita-cita jadi Hokage desa Konoha.",
  ),
  Buku(
    id: 7,
    judul: "Atomic Habits",
    genre: "Non-Fiksi",
    penulis: "James Clear",
    tahun: "2018",
    cover: "https://images.unsplash.com/photo-1589998059171-988d887df646",
    sinopsis: "Cara membangun kebiasaan kecil yang memberi hasil besar.",
  ),
  Buku(
    id: 8,
    judul: "Dune",
    genre: "Novel",
    penulis: "Frank Herbert",
    tahun: "1965",
    cover: "https://images.unsplash.com/photo-1532012197267-da84d127e765",
    sinopsis: "Perang perebutan planet gurun Arrakis yang kaya rempah.",
  ),
  Buku(
    id: 9,
    judul: "Detective Conan Vol. 1",
    genre: "Komik",
    penulis: "Gosho Aoyama",
    tahun: "1994",
    cover: "https://images.unsplash.com/photo-1618519764620-7403abdbdfe9",
    sinopsis: "Shinichi Kudo mengecil jadi anak SD dan memecahkan kasus.",
  ),
];