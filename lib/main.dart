import 'package:flutter/material.dart';
import 'package:google/Item_list.dart';
import 'package:google/models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Item> _item_list = [
    Item('Youtube', 'assets/images/youtube.png'),
    Item('jaypee.in', 'assets/images/jiit.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(''),
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('Gmail'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Images'),
            ),
            Center(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 30, top: 7, bottom: 7),
                  child: Image.asset(
                    'assets/images/jiit.png',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'G',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.values[0]),
                  ),
                  Text(
                    'o',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.values[0]),
                  ),
                  Text(
                    'o',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.values[0]),
                  ),
                  Text(
                    'g',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.values[0]),
                  ),
                  Text(
                    'l',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.values[0]),
                  ),
                  Text(
                    'e',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 600,
                margin: EdgeInsets.all(20),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search Google or type a url',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  contentPadding: EdgeInsets.all(10),
                )),
              ),
              Item_list(_item_list)
            ],
          ),
        ));
  }
}
