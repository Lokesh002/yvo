import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';
import 'package:yvo/Components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yvo/Components/manufacturerList.dart';

class AddVehicle extends StatefulWidget {
  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  String selectedManufacturer;
  String registrationNo;
  String modelName;
  String year;
  List<DropdownMenuItem> getManufacturerList() {
    List<DropdownMenuItem<String>> manufacturer_List = [];
    for (int i = 0; i < manufacturerList.length; i++) {
      var item = DropdownMenuItem(
        child: Text(manufacturerList[i]),
        value: manufacturerList[i],
      );
      manufacturer_List.add(item);
    }

    return manufacturer_List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('Add New Bike')),
      ),
      body: Column(children: <Widget>[
//
        Expanded(
          child: ReusableCard(
              colour: kactiveColor,
              cardChild: Center(
                  child: DropdownButton(
                elevation: 7,
                isExpanded: false,
                hint: Text('Choose'),
                value: selectedManufacturer,
                items: getManufacturerList(),
                onChanged: (value) {
                  setState(() {
                    selectedManufacturer = value;
                    print('selected: $selectedManufacturer');
                  });
                },
              ))),
        ),
        Expanded(
          child: ReusableCard(
            colour: kactiveColor,
            cardChild: Center(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter Model',
                  hintStyle: TextStyle(
                    color: klabelColor,
                  ),
                  hoverColor: Colors.lightGreen,
                ),
                onChanged: (value) {
                  modelName = value;
                },
              ),
            ),
          ),
        ),

        Expanded(
          child: Row(children: [
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Registration No.',
                      style: TextStyle(
                        color: klabelColor,
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'AA 00 AA 1234',
                        hintStyle: TextStyle(
                          color: klabelColor,
                        ),
                        hoverColor: Colors.lightGreen,
                      ),
                      onChanged: (value) {
                        registrationNo = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(
                colour: kactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Year',
                        style: TextStyle(color: klabelColor, fontSize: 20),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '20XX',
                        hintStyle: TextStyle(
                          color: klabelColor,
                        ),
                        hoverColor: Colors.lightGreen,
                      ),
                      onChanged: (value) {
                        year = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Container(
          width: double.infinity,
          height: 80,
          color: ksliderThumbColor,
          margin: EdgeInsets.only(top: 10.0),
          child: MaterialButton(
            onPressed: () {
              DateTime date = DateTime.now();
              DateTime currentYear = DateTime(date.year);
              try {
                if (int.parse(year) < 1990 ||
                    DateTime.utc(int.parse(year)).isAfter(currentYear)) {
                  print('$year is not valid');
                } else
                  Navigator.pushReplacementNamed(context, '/homeScreen');
              } catch (e) {
                print(e);
              }
            },
            child: Center(
                child: Text(
              'DONE',
              style: TextStyle(
                fontSize: 20.0,
                color: klabelColor,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ]),
    );
  }
}
