import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF00086B),
          title: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Sistem Kompensasi JTI Polinema',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'J',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'T',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'I',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Polinema',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),

            // Konten
            const Text(
              'DAFTAR TUGAS KOMPENSASI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Button Buat Tugas Baru
            ElevatedButton(
              onPressed: () {
                // Action untuk button
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Green color for the button
                minimumSize: const Size(272, 40),
              ),
              child: const Text(
                'Buat Tugas Baru +',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Rectangle dengan judul tugas
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9), // Bubble background color
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Judul Tugas', // Left-aligned title
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Detail >', // Right-aligned "Detail >"
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF00086B),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  // Action for Home button
                },
              ),
              IconButton(
                icon: const Icon(Icons.list, color: Colors.white),
                onPressed: () {
                  // Action for List button
                },
              ),
              IconButton(
                icon: const Icon(Icons.business_center, color: Colors.white),
                onPressed: () {
                  // Action for Briefcase button
                },
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  // Action for Profile button
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
