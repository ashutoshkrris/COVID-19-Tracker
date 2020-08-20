import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19_tracker/constants.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),
      body: ListView.builder(
          itemCount: Constants.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                Constants.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(Constants.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}
