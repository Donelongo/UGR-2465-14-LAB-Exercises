import 'package:flutter/material.dart';

void main() {
  runApp(const Bardi());
}

class Bardi extends StatelessWidget {
  const Bardi({super.key});

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
                  // width: 20,
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
                // SizedBox(width: 150,)
              ],
            )
          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("./assets/coffee.jpg", height: 300, width: double.infinity, fit: BoxFit.fill,),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$8.6',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.favorite)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("" , style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("Lorem ipsum dolor sit amet"),
                  Text("Lorem ipsum dolor sit amet" ,style: TextStyle(fontWeight: FontWeight.w500),),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star , color: Colors.yellow,),
                      SizedBox(width: 2,),
                      Text("5.0",style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(width: 2,),
                      Text("(364)",style: TextStyle(fontWeight: FontWeight.w200)),

                    ],
                  ),
                  SizedBox(width: 20,),
                  Text("|",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Text("540 Sale",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Text("|",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 2,),
                      Text("Brooklyn",style: TextStyle(fontWeight: FontWeight.w200)),

                    ],
                  )
                ],
              ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Variant", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Size: XS", style: TextStyle(fontWeight: FontWeight.bold),),
                ),

              const Row(
                children: [
                  Chip(label: Text("XS"),backgroundColor: Colors.blue),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Color: Red", style: TextStyle(fontWeight: FontWeight.bold),),
                ),

              const Row(
                children: [
                    Chip(label: Text("Red"), backgroundColor: Colors.blue),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(Icons.comment),
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: const EdgeInsets.only(left: 70, right: 70),
                  child: const Center(child: Text("Add to Shopping Cart"),),) )
                ],
              )
          ],
        ),
      ),
    );
  }
}