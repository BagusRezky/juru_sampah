import 'package:flutter/material.dart';
import 'package:juru_sampah/admin/data_warga.dart';
import 'package:juru_sampah/admin/home.dart';
import 'package:juru_sampah/admin/tambah_data_transaksi.dart';

class DataTransaksi extends StatelessWidget {
  const DataTransaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            // Tambahkan logika untuk kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          'Data Tagihan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(178, 233, 169, 100),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff00985b)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TambahTransaksiPage()),
                );
                // Tambahkan logika untuk menambahkan data warga
              },
              child: const Text('Tambah Data Transaksi'),
            ),
            const SizedBox(height: 16.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama Warga',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sampah: 5kg',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '06 Maret 2023',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Jenis : Organik',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tagihan : Rp 50.000',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Lunas',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama Warga',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sampah: 5kg',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '06 Maret 2023',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Jenis : Organik',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tagihan : Rp 50.000',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Lunas',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 300.0),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                        // Handle Home button tap
                      },
                      child: buildNavBarItem(Icons.home, 'Home'),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataWarga()),
                        );
                        // Handle Data Warga button tap
                      },
                      child: buildNavBarItem(Icons.people, 'Data Warga'),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataTransaksi()),
                        );
                        // Handle Data Tagihan button tap
                      },
                      child: buildNavBarItem(Icons.credit_card, 'Data Tagihan'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 5),
        Text(text),
      ],
    );
  }
}
