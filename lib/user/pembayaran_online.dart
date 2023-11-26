import 'package:flutter/material.dart';
import 'package:juru_sampah/user/home_user.dart';
import 'package:juru_sampah/user/upload_bukti.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({Key? key}) : super(key: key);

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
          'Pembayaran',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(178, 233, 169, 100),
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10.0),
            Stack(
              // set overflow
              clipBehavior: Clip.none,
              children: [
                Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0))),
                  color: const Color.fromRGBO(229, 255, 225, 1),
                  child: Container(
                      padding: const EdgeInsets.all(25),
                      width: 400,
                      height: 200,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color.fromARGB(255, 54, 133, 57)),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Rp. 60.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 54, 133, 57)),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'ID Pembayaran #123123123123',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )),
                ),
                Positioned(
                  top: 128,
                  child: Card(
                    elevation: 20,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    color: Colors.white,
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        width: 375,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Metode Pembayaran',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 131, 131, 131)),
                            ),
                            const Divider(
                              height: 28,
                              thickness: 2.5,
                            ),
                            const Text(
                              'Kartu Debit / Kredit',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 54, 133, 57)),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/visa.png'),
                                      width: 50,
                                    ),
                                    Image(
                                      image:
                                          AssetImage('assets/mastercard.png'),
                                      width: 55,
                                    ),
                                    Image(
                                      image: AssetImage('assets/maestro.png'),
                                      width: 50,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Image(
                                      image: AssetImage('assets/jcb.png'),
                                      width: 46,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_right_sharp)
                                  ],
                                )
                              ],
                            ),
                            const Divider(
                              height: 28,
                              thickness: 2.5,
                            ),
                            const Text(
                              'ATM / Bank Transfer',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 54, 133, 57)),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/bank_tranfer.png'),
                                      width: 230,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_right_sharp)
                                  ],
                                )
                              ],
                            ),
                            const Divider(
                              height: 28,
                              thickness: 2.5,
                            ),
                            const Text(
                              'E-Money',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 54, 133, 57)),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/qris.png'),
                                      width: 50,
                                    ),
                                    Image(
                                      image: AssetImage('assets/shopee.png'),
                                      width: 100,
                                    ),
                                    Image(
                                      image: AssetImage('assets/gopay.png'),
                                      width: 80,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_right_sharp)
                                  ],
                                )
                              ],
                            ),
                            const Divider(
                              height: 28,
                              thickness: 2.5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Metode Pembayaran Lain',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 54, 133, 57)),
                                ),
                                Icon(Icons.keyboard_arrow_right_sharp)
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff00985b),
                                minimumSize: const Size.fromHeight(36),
                              ),
                              onPressed: () {},
                              child: const Text('Selesai'),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(height: 400),
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
                              builder: (context) => const HomePageUser()),
                        );
                        // Handle Data Tagihan button tap
                      },
                      child: buildNavBarItem(Icons.payments, 'Data Transaksi'),
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
