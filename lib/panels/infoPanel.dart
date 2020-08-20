import 'package:covid19_tracker/constants.dart';
import 'package:covid19_tracker/pages/faq.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FAQ()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: primaryBlack,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//            color: primaryBlack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'FAQs',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch('https://pmcares.gov.in/en');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: primaryBlack,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//            color: primaryBlack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DONATE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch(
                  'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: primaryBlack,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//            color: primaryBlack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'MYTH BUSTERS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch(
                  'http://ashutoshkrris.herokuapp.com/');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: primaryBlack,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//            color: primaryBlack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DEVELOPER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
