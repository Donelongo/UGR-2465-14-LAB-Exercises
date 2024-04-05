import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'i JTracker';
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    SizedBox(
                      width: 200,
                      child: SearchBar(

                        hintText: 'search',
                      ),
                    ),
                    Row(children: [
                      Icon(Icons.shopping_cart),
                      Icon(Icons.notifications)
                    ])
                  ]),
            ),
          ),
        ));
  }
}