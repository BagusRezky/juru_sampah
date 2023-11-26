import 'package:flutter/material.dart';
import 'package:juru_sampah/admin/data_transaksi.dart';
import 'package:juru_sampah/admin/data_warga.dart';
import 'package:juru_sampah/auth/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Welcome'),
            Text(
              'ADMIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
              // Tambahkan fungsi logout di sini
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.mic),
                        SizedBox(width: 10),
                        // Wrap the Container with the filter icon in a Row
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Icon(Icons.filter_alt, color: Colors.black),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Show All'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Tambahkan navigasi ke halaman tambah warga di sini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DataWarga()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/DataWarga.png',
                            width: 96,
                          ),
                          const SizedBox(height: 5),
                          const Text('Data Warga'),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // Tambahkan navigasi ke halaman data transaksi di sini
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DataTransaksi()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/DataTagihan.png',
                              width: 111,
                            ),
                            const SizedBox(height: 5),
                            const Text('Data Tagihan'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Artikel',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
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
