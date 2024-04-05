import 'package:flutter/material.dart';


  void main() {
  runApp(const MaterialApp(
    home: Utracker(),
  ));
}


class Utracker extends StatelessWidget {
  const Utracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading :  IconButton(
              icon: const Icon(Icons.question_mark_outlined,
              color: Colors.white),
              onPressed: () {

              },
            ),

        title: const Center(
          child: Text('Utracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        ),


        actions:[
          IconButton(
            icon: const Icon(Icons.notifications_active,
            color: Colors.white),
            onPressed: () {
            },
          ),

          IconButton(
            icon: const Icon(Icons.settings,
            color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),



      body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding:  EdgeInsets.all(8.0),
        child:  Row(
          children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/coffee.jpg'),
        ),
        SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          'Robert Stevens',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
            ),
            SizedBox(height: 4.0),
            Row(
          children: [
            Icon(Icons.car_rental),
            SizedBox(width: 4.0),
            Text(
              'VIN: ABC123',
              style: TextStyle(
            fontSize: 12.0,
              ),
            ),
          ],
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
          'Log Out',
          style: TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.right,
            ),
          ),
        ),
          ],
        ),
      ),
      Container(
        color: Colors.blue,
        width: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Online | Battrey: 90%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
      const Column(
          children: [
            RowSection(),
            RowSection(),
            RowSection(),
            RowSection(),
            RowSection(),

          ],
      )
    ]
  )
      );
}
    }

class BoxSection extends StatelessWidget {
  const BoxSection({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(icon), Text(text)],
      ),
    );
  }
}

class RowSection extends StatelessWidget {
  const RowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxSection(text: 'map', icon: Icons.map),
        BoxSection(text: 'live location', icon: Icons.location_city),
        BoxSection(text: 'map', icon: Icons.map),
      ],
    );
  }
}