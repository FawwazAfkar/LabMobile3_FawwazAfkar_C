import 'package:flutter/material.dart';
import 'package:loginapp101/ui/sidebar.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  //ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_typing_uninitialized_variables
  var namauser;

  void _loadUsername() async {
    //inisiasi shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //ambil username
    namauser = prefs.getString('username');
    //set username on UI
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your asset path
            ),
            const SizedBox(height: 20),
            Text(
              'Halo! $namauser',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      drawer: const Sidebar(),
    );
  }
}