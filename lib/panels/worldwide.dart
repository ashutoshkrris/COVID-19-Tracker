import 'package:flutter/material.dart';

class WorldWide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[
          StatusPanel(),
          StatusPanel(),
          StatusPanel(),
          StatusPanel(),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 80.0,
      width: width / 2,
      color: Colors.blue[100],
      child: Column(
        children: <Widget>[
          Text(
            'CONFIRMED',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            '12345',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
