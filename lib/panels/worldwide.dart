import 'package:flutter/material.dart';

class WorldWide extends StatelessWidget {
  final Map worldwideData;

  const WorldWide({Key key, this.worldwideData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[
          StatusPanel(
            title: 'CONFIRMED',
            panelColor: Colors.red[100],
            textColor: Colors.red,
            increase: worldwideData['todayCases'].toString(),
            count: worldwideData['cases'].toString(),
          ),
          StatusPanel(
            title: 'ACTIVE',
            panelColor: Colors.blue[100],
            textColor: Colors.blue[900],
            increase: (worldwideData['todayCases'] -
                    worldwideData['todayRecovered'] -
                    worldwideData['todayDeaths'])
                .toString(),
            count: worldwideData['active'].toString(),
          ),
          StatusPanel(
            title: 'RECOVERED',
            panelColor: Colors.green[100],
            textColor: Colors.green,
            increase: worldwideData['todayRecovered'].toString(),
            count: worldwideData['recovered'].toString(),
          ),
          StatusPanel(
            title: 'DEATHS',
            panelColor: Colors.grey[400],
            textColor: Colors.grey[900],
            increase: worldwideData['todayDeaths'].toString(),
            count: worldwideData['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;
  final String increase;

  const StatusPanel(
      {Key key,
      this.panelColor,
      this.textColor,
      this.title,
      this.count,
      this.increase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 80.0,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: textColor),
          ),
          Text(
            '[+$increase]',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12.0, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: textColor),
          )
        ],
      ),
    );
  }
}
