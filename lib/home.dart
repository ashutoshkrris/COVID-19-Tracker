import 'package:covid19_tracker/panels/worldwide.dart';
import 'package:flutter/material.dart';
import 'package:covid19_tracker/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('COVID-19 TRACKER'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              color: Colors.red[100],
              child: Text(Constants.quote, style: TextStyle(
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
            ),
            Text('WORLDWIDE'),
            WorldWide()
          ],
        ),
      ),
    );
  }
}
