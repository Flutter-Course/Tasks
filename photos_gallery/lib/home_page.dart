import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<String> qoutes = [
    'One Day you will be proud you made it through this',
    'It may not be a good day, but there is something good in every day',
    "Worrying about things might go wrong doesn't help things to go right",
    'I have loved the stars too findly to be fearful of the night',
    "Don't believe everything you think",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos Gallery'),
        centerTitle: true,
        leading: FlatButton(
          child: Text(
            'Pre',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              if (index != 0)
                index--;
              else
                index = 4;
            });
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              setState(() {
                if (index != 4)
                  index++;
                else
                  index = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              qoutes[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/landscape$index.jpg'),
          ],
        ),
      ),
    );
  }
}
