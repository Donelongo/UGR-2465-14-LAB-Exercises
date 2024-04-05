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
      const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Map", icon: Icons.map),
            MyCard(text: 'Live Location', icon: Icons.location_pin),
            MyCard(text: 'History ', icon: Icons.history),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Set Geofence", icon: Icons.map),
            MyCard(text: 'Detail info', icon: Icons.info),
            MyCard(text: 'History ', icon: Icons.history),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Change center Number", icon: Icons.phone_android),
            MyCard(text: 'Disabled Menu', icon: Icons.key),
            MyCard(text: 'set GPS ', icon: Icons.hourglass_empty_outlined),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Restart Device", icon: Icons.restart_alt),
            MyCard(text: 'Device Saving mode', icon: Icons.battery_saver),
            MyCard(text: 'Normal Mode ', icon: Icons.battery_full),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(
                text: "Shutdown device",
                icon: Icons.power_settings_new_outlined),
            MyCard(text: 'Disabled Menu', icon: Icons.notes_rounded),
            MyCard(text: 'Contact Us ', icon: Icons.contact_mail),
          ]),
        ]));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, color: Colors.blue), Text(text)],
      ),
    );
  }
}