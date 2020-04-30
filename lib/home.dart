import 'package:flutter/material.dart';
import 'team.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: (){
        return showDialog(
            context: context,
            builder: (context)=> AlertDialog(
              title: Text(
                  'Warning'
              ),
              content: Text(
                "Do you want to exit app?"
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                  child: Text(
                    "Yes"
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop(false);
                  },
                  child: Text(
                      "No"
                  ),
                ),
              ],
            ),
        );
      },
      child:  Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 145),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
//                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
//                        topRight: Radius.circular(50),
//                        bottomLeft: Radius.circular(50),
//                        bottomRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(),
                        Container(
//                        decoration: BoxDecoration(
//                          color: Colors.red,
//                          borderRadius: BorderRadius.circular(10),
//                        ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
//                        SizedBox(height: 1,),
                        Text(
                          "DSC -UCC is a group that aims to help students of different academic backgrounds to be "
                              "able to solve probelms in society using software skils: thus, software engineering and programming.",
                          style: TextStyle(color: Colors.white, fontSize: 16),),
                        Text(""),
                        Text(
                          "We organise workshops every now and then students to meet up with the Lead and co-leads to"
                              "learn and develop. We also have times where we invite other students and showcase softwares we"
                              "have developed as a form of invitation to them.",
                          style: TextStyle(color: Colors.white, fontSize: 16),),
                        SizedBox(height: 1,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("DSC - UCC"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.black87,
                      Colors.black,
                    ])
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
//            child: Padding(padding: EdgeInsets.all(8.0),),
                        child: Image.asset(
                          'assets/images/logo.png', width: 150, height: 100,),),
                      Text(''),
                      Text('DSC - UCC', style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: ListTile(
                  title: Text('About Us'),
                  leading: Icon(Icons.home, color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Semester Prgrammes'),
                  leading: Icon(Icons.calendar_today, color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Other Apps'),
                  leading: Icon(Icons.apps, color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(
                          builder: (context) => Team()
                      )
                  );
                },
                child: ListTile(
                  title: Text('Meet The Team'),
                  leading: Icon(Icons.person, color: Colors.red),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: ListTile(
                  title: Text('Exit'),
                  leading: Icon(Icons.exit_to_app, color: Colors.green,),
                ),
              ),
              InkWell(
//              onTap: () => Navigator.of(context).pop(),
                child: ListTile(
                  title: Text('Version 1.0'),
                  leading: Icon(Icons.format_list_numbered, color: Colors.green,),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
//End of HomePage (About Us)
