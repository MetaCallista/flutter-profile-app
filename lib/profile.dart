import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Foto Profil
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 10),
          // Nama
          const Text(
            'Putu Meta Callista',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          // URL
          const Text(
            'https://metacallista.github.io/',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Grid Menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9,
                children: [
                  MyCustomCard(
                    title: 'Singaraja',
                    icon: Icons.gps_fixed,
                    iconColor: Colors.green,
                  ),
                  MyCustomCard(
                    title: 'Sambangan',
                    icon: Icons.store,
                    iconColor: Colors.orange,
                  ),
                  MyCustomCard(
                    title: 'All Genre',
                    icon: Icons.music_note,
                    iconColor: Colors.purple,
                  ),
                  MyCustomCard(
                    title: 'Undiksha',
                    icon: Icons.apartment,
                    iconColor: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;

  const MyCustomCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, 
      height: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: 150, 
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 13, 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
