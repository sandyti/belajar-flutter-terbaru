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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Data lokal dengan nama produk, harga, dan gambar dari assets
  final List<Map<String, String>> items = const [
    {
      "title": "Laptop",
      "subtitle": "Harga: Rp10.000.000",
      "image": "assets/images/leptop.jpg"
    },
    {
      "title": "Smartphone",
      "subtitle": "Harga: Rp5.000.000",
      "image": "assets/images/smartphone.jpg"
    },
    {
      "title": "Tablet",
      "subtitle": "Harga: Rp3.500.000",
      "image": "assets/images/tablet.jpg"
    },
    {
      "title": "Smartwatch",
      "subtitle": "Harga: Rp2.000.000",
      "image": "assets/images/smartwatch.jpg"
    },
    {
      "title": "Kamera",
      "subtitle": "Harga: Rp4.500.000",
      "image": "assets/images/camera.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: items.length, // Jumlah item dalam daftar
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8), // Membuat gambar rounded
                child: Image.asset(
                  items[index]['image']!, // Mengambil gambar dari assets
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover, // Menyesuaikan gambar agar tidak terdistorsi
                ),
              ),
              title: Text(items[index]['title']!), // Menampilkan nama produk
              subtitle: Text(items[index]['subtitle']!), // Menampilkan harga produk
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
