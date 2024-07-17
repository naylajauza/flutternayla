import 'package:flutter/material.dart';
import 'detail_transportasi.dart';


class ListTransportasi extends StatelessWidget {
  final List<Map<String, dynamic>> transportasiData = [
    {
      "nama": "Terminal",
      "transportasi": "Bus",
      "image": "assets/images/terminal.jpg",
      "gallery": [
        "assets/images/bus1.jpg",
        "assets/images/bus2.jpg",
        "assets/images/bus3.jpg"
      ],
      "desc": "Bus dapat digunakan untuk perkotaan terjadwal, perjalanan jauh terjadwal, sekolah, sewa, atau pariwisata."
    },
    {
      "nama": "KAI",
      "transportasi": "Kereta",
      "image": "assets/images/KAI.jpg",
      "gallery": [
        "assets/images/kereta1.jpg",
        "assets/images/kereta2.jpg",
        "assets/images/kereta3.jpg"
      ],
      "desc": "Kereta api adalah bentuk pengangkutan rel yang terdiri dari serangkaian kendaraan yang ditarik sepanjang jalur kereta api untuk mengangkut kargo atau penumpang. Gaya gerak disediakan oleh lokomotif yang terpisah atau motor individu dalam beberapa unit.."
    },
    {
      "nama": "Bandara",
      "transportasi": "Pesawat",
      "image": "assets/images/logo garuda.jpg",
      "gallery": [
        "assets/images/pesawat1.jpg",
        "assets/images/pesawat2.jpg",
        "assets/images/pesawat3.jpg"
      ],
      "desc": "Pesawat terbang adalah pesawat udara yang lebih berat dari udara, bersayap tetap, dan dapat terbang dengan tenaga sendiri."
    },
    {
      "nama": "Pelabuhan",
      "transportasi": "Kapal Pesiar",
      "image": "assets/images/kapl0.jpg",
      "gallery": [
        "assets/images/kapal1.jpg",
        "assets/images/kapal2.jpg",
        "assets/images/kapal3.jpg"
      ],
      "desc": "Kapal pesiar adalah kapal yang dipakai secara khusus untuk tujuan rekreasi. Para Penumpang menaiki kapal pesiar untuk menikmati waktu yang dihabiskan di atas kapal yang dilengkapi fasilitas penginapan dan perlengkapan bagaikan hotel berbintang."
    },
     {
      "nama": "Mobil",
      "transportasi": "Mobil",
      "image": "assets/images/logo mobil.jpg",
      "gallery": [
        "assets/images/mobil1.jpg",
        "assets/images/mobil2.jpg",
        "assets/images/mobil3.jpg"
      ],
      "desc": "Mobil adalah kendaraan yang menggunakan bahan bakar untuk menghidupkan mesinnya."
    },
    {
      "nama": "Motor",
      "transportasi": "Motor",
      "image": "assets/images/motor3.jpg",
      "gallery": [
        "assets/images/motor1.jpg",
        "assets/images/motor2.jpg",
        "assets/images/motor3.jpg"
      ],
      "desc": "Sepeda motor adalah kendaraan beroda dua yang digerakkan oleh sebuah mesin. Letak kedua roda sebaris lurus dan pada kecepatan tinggi sepeda motor tetap stabil disebabkan oleh gaya giroskopik. Sedangkan pada kecepatan rendah, kestabilan atau keseimbangan sepeda motor bergantung kepada pengaturan setang oleh pengendara."
    },
    {
      "nama": "Sepeda",
      "transportasi": "Sepeda",
      "image": "assets/images/logo sepda.jpg",
      "gallery": [
        "assets/images/sepeda1.jpg",
        "assets/images/sepeda2.jpg",
        "assets/images/sepeda3.jpg"
      ],
      "desc": "Sepeda, kereta angin, kereta lereng, atau besikal adalah kendaraan beroda dua atau tiga yang mempunyai setang, tempat duduk, dan sepasang pengayuh yang digerakkan kaki untuk menjalankannya."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transportasi'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/container.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: transportasiData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailTransportasi(
                        nama:transportasiData[index]["nama"],
                        transportasi:transportasiData[index]["transportasi"],
                        image:transportasiData[index]["image"],
                        gallery:transportasiData[index]["gallery"],
                        desc:transportasiData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(transportasiData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    transportasiData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
