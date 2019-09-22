import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';
import 'package:yvo/Components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(child: Text('Profile')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('images/lokesh photo.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Lokesh Joshi',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('+91-8572039016',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.biking,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Bikes',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.mapMarked,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Address',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: ksliderThumbColor,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                  child: Text(
                'BOOK SERVICE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: klabelColor,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ));
  }
}
