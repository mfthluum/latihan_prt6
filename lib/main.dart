import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
      ),
      body: MyPages3(),
   );
 }
}

class MyPages3 extends StatelessWidget {
  const MyPages3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '3. Aturan Posisi (dengan Align)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (ALIGN)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Align(
                  alignment: Alignment.bottomRight, 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Text('Align', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
