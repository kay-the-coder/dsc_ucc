import 'package:flutter/material.dart';

// This page should contain the pictures of the Lead and co-leads
// with their names, programme and level.
// After every year, we will update it and create a section where
// we will display the year group with their Lead and co-leads.

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.green[900],
                  Colors.yellow[700],
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Meet The Team', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 25,),
                  Text('Lead and Co-Leads', style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),

             )
            )
          ]
        )
      )
    );


  }
}
