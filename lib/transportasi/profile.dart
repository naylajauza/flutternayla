import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/images/2456profile.jpg'), // Ganti URL dengan URL gambar profil
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nayla',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ig:@haechanaceah',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Telepon: +0000000000000',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol ditekan
              },
              child: Text('Edit Profil'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Perbaikan di sini
              ),
            ),
          ],
        ),
      ),
    );
  }
}