import 'package:flutter/material.dart';

void main() {
  // MaterialApp acts as a wrapper to the app. Applies google design style to the app.
  // Adding const helps with performance as it doesn't rebuild the widget every time.
  runApp(MaterialApp( //runApp's argument is a widget that is the root of the widget tree
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id'),
        // The number between the brackets below is the strength of the color
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: const Home(),
    )
  ));
}
// The use of the code below is to allow the code to hot reload when changes are made
// extends means it inherits all the functionality of the StatelessWidget class
class Home extends StatelessWidget {
  const Home({super.key});
  
  // override just means we're overrding the inherited version of this function
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: const Text('Hello World', style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
        color: Color.fromARGB(255, 255, 255, 255),
        fontStyle: FontStyle.italic,
        shadows: [
          Shadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset(2, 2)
          )
        ],
        fontFamily: 'IndieFlower'
      )),
    );
  }
}


// container
// --wraps other widgets
