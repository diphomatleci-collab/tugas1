import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gunung Merbabu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GunungMerbabuPage(),
    );
  }
}

class GunungMerbabuPage extends StatelessWidget {
  const GunungMerbabuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemandangan Gunung Merbabu'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Gunung Merbabu
            Image.asset(
              'assets/gunung_merbabu.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gunung Merbabu',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Gunung Merbabu merupakan salah satu gunung '
                    'yang berada di Jawa Tengah, Indonesia. Gunung ini '
                    'memiliki pemandangan alam yang indah dengan '
                    'pegunungan hijau, hamparan awan, dan langit yang '
                    'cerah. Pemandangan Gunung Merbabu menjadi daya tarik '
                    'bagi para pendaki dan wisatawan karena keindahan '
                    'alamnya yang masih asri dan menenangkan.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bagian bawah
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Pojok kiri bawah
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(0xff0c0000),
                ),
                SizedBox(width: 5),
                Text(
                  'Jawa Tengah',
                  style: TextStyle(
                    color: Color(0xff140101),
                    fontSize: 15,
                  ),
                ),
              ],
            ),

            // Pojok kanan bawah
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Color(0xff0f0000),
                ),
                SizedBox(width: 5),
                Text(
                  'Kontak',
                  style: TextStyle(
                    color: Color(0xff0f0000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
