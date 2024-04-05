import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),

          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  padding: const EdgeInsets.only(left: 10, right: 150, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 5,),
                      Text("Search Product")
                    ],
                  ),

                ),
                const SizedBox(width: 25,),
                const Icon(Icons.shopping_cart),
                const SizedBox(width: 25,),
                const Icon(Icons.notifications),
              ],
            )
          ],
        ),

        body: Column(
          children: [
            Image.asset("./assets/coffee.jpg"),
            const Row(
              children: [
                Text(
                  '\$8.6',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Spacer(),
                  SizedBox(width: 10),
                  Icon(Icons.favorite),
              ],
            )
          ],
        ),
      ),
    );
  }
}
