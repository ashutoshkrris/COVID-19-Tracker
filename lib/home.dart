import 'dart:convert';

import 'package:covid19_tracker/pages/countryPage.dart';
import 'package:covid19_tracker/panels/infoPanel.dart';
import 'package:covid19_tracker/panels/mostAffected.dart';
import 'package:covid19_tracker/panels/worldwide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19_tracker/constants.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map worldwideData;

  fetchWorldWideData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v3/covid-19/all');
    setState(() {
      worldwideData = json.decode(response.body);
    });
  }

  List mostAffectedData;

  fetchMostAffectedData() async {
    http.Response response = await http
        .get('https://corona.lmao.ninja/v3/covid-19/countries?sort=cases');
    setState(() {
      mostAffectedData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    fetchMostAffectedData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('COVID-19 TRACKER'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              color: Colors.red[100],
              child: Text(
                Constants.quote,
                style: TextStyle(
                    color: Colors.red[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Worldwide',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CountryPage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryBlack,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Regional',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            worldwideData == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : WorldWide(worldwideData: worldwideData),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Text(
                'Most Affected Countries',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            mostAffectedData == null
                ? Container()
                : MostAffectedPanel(
                    countryData: mostAffectedData,
                  ),
            SizedBox(
              height: 10.0,
            ),
            InfoPanel(),
            SizedBox(
              height: 20.0,
            ),
            Center(
                child: Text(
              'STAY HOME, STAY SAFE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),),
            SizedBox(height: 5.0,),
            Center(
                child: Text(
                  '©2020, Ashutosh Krishna',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                ),),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
