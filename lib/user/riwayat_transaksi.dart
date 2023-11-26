import 'package:flutter/material.dart';
import 'package:juru_sampah/user/detail_trasaksi.dart';
import 'package:juru_sampah/user/home_user.dart';

class RiwayatTagihan extends StatelessWidget {
  const RiwayatTagihan({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => const HomePageUser()),
            );
            // Tambahkan logika untuk kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          'Riwayat Tagihan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(178, 233, 169, 100),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '03 Maret 2023',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Tagihan: Rp 30.000',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jenis Sampah : Anorganik',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailTransaksi()),
                                );
                                // Tambahkan logika untuk kembali ke halaman sebelumnya
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 2, left: 12, right: 12, bottom: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xff121E87),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pembayaran',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
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
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '03 Februari 2023',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Tagiha: Rp 30.000',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jenis Sampah: Organik',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 2, left: 12, right: 12, bottom: 2),
                              decoration: BoxDecoration(
                                color: const Color(0xff24FF00),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Lunas',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
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
            const SizedBox(height: 370.0),
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
                              builder: (context) => const HomePageUser()),
                        );
                        // Handle Home button tap
                      },
                      child: buildNavBarItem(Icons.home, 'Home'),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RiwayatTagihan()),
                        );
                        // Handle Data Tagihan button tap
                      },
                      child:
                          buildNavBarItem(Icons.history_edu, 'Riwayat Tagihan'),
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
