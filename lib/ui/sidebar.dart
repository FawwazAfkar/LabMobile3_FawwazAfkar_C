import 'package:flutter/material.dart';
import 'package:loginapp101/ui/homepage.dart';
import 'package:loginapp101/ui/landingpage.dart';

class Sidebar extends StatelessWidget{
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Sidebar'),
          ), // Add this line to create space between DrawerHeader and ListTile
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              //navigasi ke halaman home
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LandingPage()),
                (route) => false,
              );
              // perform logout logic here
            },
          ),
        ],
      ),
    );
  }
}