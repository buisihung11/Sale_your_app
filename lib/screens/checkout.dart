import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final _formKey = GlobalKey<FormState>();
  String _date = "Not set";
  String _time = "Not set";
  @override
  Widget build(BuildContext context) {
    // bool changeColor = false;

    double imageWidth = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Check Out',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: Text(
                      "Order Detail",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CartItem(
                      imageWidth: imageWidth, image: "assets/images/bread.jpg"),
                  CartItem(
                      imageWidth: imageWidth, image: "assets/images/breed.jpg"),
                  CartItem(
                      imageWidth: imageWidth, image: "assets/images/cake.jpg"),
                  CartItem(
                      imageWidth: imageWidth,
                      image: "assets/images/water_bottle.jpg"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Payment Option:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: new MaterialButton(
                    onPressed: () {},
                    height: MediaQuery.of(context).size.width / 10,
                    child: new Text(
                      "Payment in cash",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: VerticalDivider(
                    width: 1,
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: imageWidth / 2.5,
                          width: imageWidth / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/logomomo.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Momo wallet",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Pick up Time:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _date = '${date.year} - ${date.month} - ${date.day}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                                Text(
                                  " $_date",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  DatePicker.showTimePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true, onConfirm: (time) {
                    print('confirm $time');
                    _time = '${time.hour} : ${time.minute} : ${time.second}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.access_time,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                                Text(
                                  " $_time",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Note:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                right: -40.0,
                                top: -40.0,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text("Add your note"),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Enter a your note'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        child: Text("Submit"),
                                        onPressed: () {
                                          if (_formKey.currentState.validate()) {
                                            _formKey.currentState.save();
                                          }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Note for store",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Text(
                        "  Add",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            Expanded(
              child: new MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                height: MediaQuery.of(context).size.width / 7,
                child: new Text(
                  "Place Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Total:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "\$21 ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckOutScreen(),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    @required this.imageWidth,
    @required this.image,
  }) : super(key: key);

  final double imageWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //Image
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(10),
            child: Container(
              height: imageWidth / 1.2,
              width: imageWidth / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          bottom: imageWidth / 10, top: imageWidth / 10),
                      child: Text(
                        "Bread",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Image.asset('assets/images/icons/delete.png'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        ' \$${10}',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          " \$5",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Feather.minus_square),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Feather.plus_square),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
