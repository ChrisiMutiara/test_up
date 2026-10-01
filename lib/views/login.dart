import 'package:flutter/material.dart';
import 'package:lat_kuis/root.dart';              // ganti "kuis_coba" = nama project, "root.dart" = halaman tujuan login
import 'package:lat_kuis/models/data.dart';       // ganti "data.dart" = file data user & menu

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();  // 1 field = 1 controller, tambah kalau butuh field lain (email, nim, dll)
  final TextEditingController passwordController = TextEditingController();

  bool isLoggedIn = false;                          // flag status login, ganti nama kalau perlu

  void login() {
    String username = usernameController.text;      // ambil isi input, nama variabel = nama controller tanpa "Controller"
    String password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {     // validasi: ganti kondisi kalau butuh cek format (email pakai @, nim pakai angka)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orange,
          content: Text("Username dan password tidak boleh kosong"),  // ganti pesan validasi
        ),
      );
      return;
    }

    if (username == user1.username && password == user1.password) {   // ganti "user1.username" & "user1.password" kalau field data user beda
      setState(() {
        isLoggedIn = true;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(username: username)),   // ganti "Root" = halaman tujuan, "username: username" = data yang dikirim
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("Login Berhasil"),          // ganti pesan sukses
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("Login Gagal. Username atau Password Salah"),  // ganti pesan gagal
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,         // ganti warna tema
        foregroundColor: Colors.white60,
        title: Text("Login Page"),                  // ganti judul halaman
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 //===== TEKS "ME GACOAN" (PENGGANTI LOGO) =====
              Text(
                "Perpustakaan",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 8),
              Text("Selamat Datang di Perpustakaan Online"),
              SizedBox(height: 40),
              
              SizedBox(height: 16),
              Text("Selamat Datang di Perpustakaan Online"),     // ganti teks sambutan
              SizedBox(height: 30),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "username",             // ganti hint field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: true,                  // false kalau bukan field password
                decoration: InputDecoration(
                  hintText: "password",             // ganti hint field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 40,
                width: 180,
                child: ElevatedButton(
                  onPressed: login,
                  child: Text("Login"),             // ganti teks tombol
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],   // ganti warna tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}