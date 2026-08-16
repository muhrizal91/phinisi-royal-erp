import 'package:flutter/material.dart';

void main() {
  runApp(const PhinisiRoyalERP());
}

class PhinisiRoyalERP extends StatelessWidget {
  const PhinisiRoyalERP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PHINISI ROYAL ERP',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PHINISI ROYAL ERP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Sistem Manajemen Developer & Proyek'),
            const SizedBox(height: 24),
            _menuCard(
              Icons.home_work,
              'Proyek Perumahan',
              'Kelola proyek dan unit rumah',
            ),
            _menuCard(
              Icons.engineering,
              'Progres Pekerjaan',
              'Pantau progres pembangunan',
            ),
            _menuCard(
              Icons.people,
              'Data Konsumen',
              'Kelola data pembeli',
            ),
            _menuCard(
              Icons.account_balance_wallet,
              'Keuangan',
              'Kelola pemasukan dan pengeluaran',
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
