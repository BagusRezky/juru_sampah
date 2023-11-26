import 'package:flutter/material.dart';
import 'package:juru_sampah/auth/login.dart';
import 'package:juru_sampah/user/riwayat_transaksi.dart';

class HomePageUser extends StatelessWidget {
  const HomePageUser({Key? key}) : super(key: key);

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
              'NIA',
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
                // Text('Show All'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Tambahkan navigasi ke halaman tambah warga di sini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RiwayatTagihan()),
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
                            'assets/Riwayat tagihan.png',
                            width: 96,
                          ),
                          const SizedBox(height: 5),
                          const Text('Riwayat Tagihan'),
                        ],
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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePageUser()),
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
                            builder: (context) => const RiwayatTagihan()),
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
