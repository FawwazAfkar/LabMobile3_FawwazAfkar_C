import 'package:flutter/material.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feeds'),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: [Colors.blue, Colors.purple][0],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 5,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/image1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'RDJ return to Marvel',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Robert Downey Jr. will return to Marvel in the upcoming movies.'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 5,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/image2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'Synyster Gates on tour',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('The guitarist of Avenged Sevenfold will go on tour in 2024.'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 5,
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/image3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'Lamine Yamal on the rise',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('The wonderkid from Spain is on the rise in the football.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}