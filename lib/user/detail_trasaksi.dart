import 'package:flutter/material.dart';
import 'package:juru_sampah/user/home_user.dart';
import 'package:juru_sampah/user/riwayat_transaksi.dart';
import 'package:juru_sampah/user/upload_bukti.dart';
import 'package:juru_sampah/user/pembayaran_online.dart';

class DetailTransaksi extends StatelessWidget {
  const DetailTransaksi({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => const RiwayatTagihan()),
            );
          },
        ),
        title: const Text(
          'Detail Transaksi',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(178, 233, 169, 100),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rp 30.000',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'poppins',
                      color: Color(0xff1A6400),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  buildDetailRow('Date', '25 Februari 2023'),
                  const SizedBox(height: 10.0),
                  buildDetailRow('Time', '14:00'),
                  const SizedBox(height: 10.0),
                  buildDetailRow('ID Pembayaran', '123456789'),
                  const SizedBox(height: 10.0),
                  buildDetailRow('Jenis Sampah', 'Non Organik'),
                  const SizedBox(height: 33.0),
                  const Image(image: AssetImage('assets/Line 3.png')),
                  const SizedBox(height: 10.0),
                  buildDetailRow('Total Pembayaran', 'RP 30.000'),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Pilih Pembayaran :',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff00985b),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadBukti(),
                          ),
                        );
                      },
                      child: const Text('Bukti Pembayaran'),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff00985b),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pembayaran(),
                          ),
                        );
                      },
                      child: const Text('Pembayaran Online'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 160.0),
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
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePageUser(),
                          ),
                        );
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
                            builder: (context) => const RiwayatTagihan(),
                          ),
                        );
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

  Widget buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14.0,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xff626262),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14.0,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xff000000),
          ),
        ),
      ],
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
