import 'package:flutter/material.dart';
import 'package:hng_internship_app/widgets/appbarlogo.dart';
import 'package:hng_internship_app/widgets/button.dart';
import 'package:hng_internship_app/widgets/hngLogoPage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const.dart';

class DisplayScreen extends StatefulWidget {
   String userName;
   String emailAddress;
   String lastName;
   String phoneNumber;
   String stack;

   DisplayScreen({this.userName, this.emailAddress, this.lastName, this.phoneNumber, this.stack});

  @override
  _DisplayScreenState createState() => _DisplayScreenState(firstName:userName,newEmailAddress:emailAddress, newLastName: lastName, newPhoneNumber: phoneNumber, newStack: stack,
  );
}

class _DisplayScreenState extends State<DisplayScreen> {
  final String firstName;
  final String newEmailAddress;
  final String newPhoneNumber;
  final String newLastName;
  final String newStack;

  _DisplayScreenState(
      {this.firstName, this.newEmailAddress, this.newLastName, this.newPhoneNumber, this.newStack});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KdarkBlueColour,
        centerTitle: true,
        title: Text("HNG InternShip", style: TextStyle(color: Colors.white,),
        ),
        actions: [
          appbarLogo(),
          SizedBox(width: 25.0,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Center(child: Text("$firstName Here are all of your details ", style:
          TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300

          ),
            textAlign: TextAlign.center,),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
            child: Expanded(
                child:
                Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xFF0E3E3E3)
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.0,),
                        Container(child:
                        Column(
                          children: [
                            Text(" First Name:"),
                            SizedBox(height: 10.0,),
                            Text("$firstName", style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),),
                            SizedBox(height: 50.0,),
                          ],
                        ),
                        ),


                        Container(child:
                        Column(
                          children: [
                            Text(" Last Name:"),
                            SizedBox(height: 10.0,),
                            Text("$newLastName", style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),),
                            SizedBox(height: 50.0,),
                          ],
                        ),
                        ),


                        Container(child:
                        Column(
                          children: [
                            Text("EmailAddress:"),
                            SizedBox(height: 10.0,),
                            Text("$newEmailAddress", style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),),
                            SizedBox(height: 50.0,),
                          ],
                        ),
                        ),


                        Container(child:
                        Column(
                          children: [
                            Text("Phone Number:"),
                            SizedBox(height: 10.0,),
                            Text("$newPhoneNumber", style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),),
                            SizedBox(height: 50.0,),
                          ],
                        ),
                        ),


                        Container(child:
                        Column(
                          children: [
                            Text("What you Do:"),
                            SizedBox(height: 10.0,),
                            Text("$newStack", style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),),
                            SizedBox(height: 20.0,)
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ),
         Text("Click on the button to go to any of the sites"),
         SizedBox(height: 10.0,),
         Row(
           children: [
             RoundWhiteButton(label: "HNG",
               onTap: _launchURL1,
             ),
             RoundWhiteButton(label: "Zuri",
               onTap: _launchURL2,),
             RoundWhiteButton(label: "I4G",
               onTap: _launchURL3,),
           ],
         )
        ],
      ),
    );
  }


  _launchURL1() async {
    const url = 'https://hng.tech/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURL2() async {
    const url = 'https://internship.zuri.team/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURL3() async {
    const url = 'https://ingressive.org/author/i4g/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}