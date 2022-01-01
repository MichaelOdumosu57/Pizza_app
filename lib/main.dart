import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: showPizzaLayout(3, 5),
      ),
    );
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    List<Widget> layoutChildren = [];
    Container backGround = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://media.istockphoto.com/photos/cheesy-pepperoni-pizza-picture-id938742222'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
    layoutChildren.add(backGround);
    Positioned pizzaCard = Positioned(
      top: 50,
      left: 100,
      child: Card(
        elevation: 12,
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Text("Pizza Margheita",
                style: TextStyle(color: Colors.deepOrange[800], fontSize: 24)),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('this pizza is made of good stuff \n \n Seriously '),
            )
          ],
        ),
      ),
    );
    layoutChildren.add(pizzaCard);
    Positioned buttonOrder = Positioned(
      bottom: 50,
      left: 100,
      // width: sizeX - sizeX / 10,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Order Now',
            style: TextStyle(color: Colors.white, fontSize: 24)),
        style: ElevatedButton.styleFrom(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
    layoutChildren.add(buttonOrder);
    return layoutChildren;
  }
}
