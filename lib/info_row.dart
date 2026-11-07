import 'package:flutter/material.dart';

class InfoRowApp extends StatelessWidget {
  const InfoRowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('Profil Saya'),
        centerTitle: true,
        ),
        body: const Column(
          children: [
            ProfileAvatar(),
            InfoRow(icon: Icons.mail_outline, label: 'Email', value: 'rival@gmail.com'),
            InfoRow(label: 'Telepon', value: '+62 812-3456-7890', icon: Icons.phone),
            InfoRow(icon: Icons.place_outlined, label: 'Lokasi', value: 'Tangerang'),
            InfoRow(icon: Icons.link, label: 'Website', value: 'paulo_Dev', catatan: 'portofolio'),
          ],
        ),
      ),
    );
  }
}
 
class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.catatan, // opsional, boleh null
  });
 
  final IconData icon;
  final String label;
  final String value;
  final String? catatan;
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(catatan == null ? value : '$value · $catatan'),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      child: Icon(Icons.person, size: 50),
    );
  }
}
