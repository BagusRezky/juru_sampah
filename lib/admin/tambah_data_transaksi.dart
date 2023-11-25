import 'package:flutter/material.dart';
import 'package:juru_sampah/admin/data_transaksi.dart';
import 'package:juru_sampah/admin/data_warga.dart';
import 'package:juru_sampah/admin/home.dart';

class TambahTransaksiPage extends StatefulWidget {
  const TambahTransaksiPage({Key? key}) : super(key: key);

  @override
  _TambahTransaksiPageState createState() => _TambahTransaksiPageState();
}

class _TambahTransaksiPageState extends State<TambahTransaksiPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  TextEditingController beratController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController jenisController = TextEditingController();

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
              MaterialPageRoute(builder: (context) => const DataWarga()),
            );
          },
        ),
        title: const Text(
          'Tambah Data Tagihan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color(0xffB2E9A9),
        child: ListView(
          // Wrap the Column with a ListView
          padding: const EdgeInsets.all(16.0),
          children: [
            // const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration:
                        const InputDecoration(labelText: 'Nama Pemilik Sampah'),
                  ),
                  const SizedBox(height: 9.0),
                  TextFormField(
                    controller: tanggalController,
                    decoration: const InputDecoration(labelText: 'Tanggal'),
                  ),
                  const SizedBox(height: 9.0),
                  TextFormField(
                    controller: beratController,
                    decoration:
                        const InputDecoration(labelText: 'Jumlah Per/Kg'),
                  ),
                  const SizedBox(height: 9.0),
                  TextFormField(
                    controller: hargaController,
                    decoration: const InputDecoration(labelText: 'Harga'),
                  ),
                  const SizedBox(height: 9.0),
                  TextFormField(
                    controller: jenisController,
                    decoration:
                        const InputDecoration(labelText: 'Jenis Sampah'),
                  ),
                  const SizedBox(height: 15.0),
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
            const SizedBox(
              height: 4,
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
