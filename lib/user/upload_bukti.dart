import 'package:flutter/material.dart';
import 'package:juru_sampah/user/detail_trasaksi.dart';
import 'package:juru_sampah/user/home_user.dart';
import 'package:juru_sampah/user/riwayat_transaksi.dart';

class UploadBukti extends StatefulWidget {
  const UploadBukti({Key? key}) : super(key: key);

  @override
  _UploadBuktiState createState() => _UploadBuktiState();
}

class _UploadBuktiState extends State<UploadBukti> {
  TextEditingController nameController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
              MaterialPageRoute(builder: (context) => const DetailTransaksi()),
            );
          },
        ),
        title: const Text(
          'Bukti Pembayaran',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color(0xffB2E9A9),
        child: ListView(
          // Wrap the Column with a ListView
          padding: const EdgeInsets.all(10.0),
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Bukti Pembayaran Sebelum 06 Maret  2023 - Jam 18:24',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama : Yosef Rizki',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Total Pembayaran : Rp. 30.000',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Telepon : 0831231211',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'Email : yosef@gmail.com',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'Alamat : Jl Jend Sudirman.Jakarta',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(30.0),
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration:
                        const InputDecoration(labelText: 'Nama Rekening'),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: tanggalController,
                    decoration:
                        const InputDecoration(labelText: 'Tanggal Transfer'),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(labelText: 'Telepon'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle login as user
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 152, 91, 100)),
                  child: const Text('Simpan',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(125, 125, 125, 70),
                ),
                onPressed: () {
                  // Logika untuk membatalkan input
                  // Anda dapat menambahkan logika pembatalan di sini
                  // print('Batal');
                },
                child: const Text('Batal'),
              ),
            ),
            const SizedBox(height: 60.0),
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
