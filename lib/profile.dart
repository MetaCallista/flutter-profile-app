import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(227, 242, 253, 1.0),
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 42, 146),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          // Foto Profil
          const CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          // Nama
          const Text(
            'Putu Meta Callista',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          // URL
          const Text(
            'https://metacallista.github.io/',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          // Grid Menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 25,
                crossAxisSpacing: 60,
                childAspectRatio: 1.2,
                children: [
                  MyCustomCard(
                    title: 'Singaraja',
                    icon: Icons.gps_fixed,
                    iconColor: Colors.green,
                  ),
                  MyCustomCard(
                    title: 'Sambangan',
                    icon: Icons.store,
                    iconColor: Colors.amber,
                  ),
                  MyCustomCard(
                    title: 'All Genre',
                    icon: Icons.music_note,
                    iconColor: Colors.deepPurple,
                  ),
                  MyCustomCard(
                    title: 'Undiksha',
                    icon: Icons.business,
                    iconColor: Colors.blue,
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
      width: 120, 
      height: 100,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: 60, 
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 0),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(255, 245, 200, 76),
                fontWeight: FontWeight.bold,
                fontSize: 15, 
              ),
            ),
          ),  
        ],
      ),
    );
  }
}
