import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool changeColor = false;
    double imageWidth = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Check Out',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Delivery To",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Change Address",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
            // Divider(
            //   height: 1,
            //   thickness: 0.5,
            //   color: Colors.black,
            // ),
            Container(
              child: Row(
                //Image
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: imageWidth,
                      width: imageWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                        image: DecorationImage(
                          image: AssetImage('assets/images/fptulocation.jpg'),
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
                                  bottom: imageWidth / 10,
                                  top: imageWidth / 10),
                              child: Text(
                                "Lot E2a-7, D1 Street ... HCM City",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: imageWidth / 10),
                              child: Text(
                                "Note about the address",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding:
                                    EdgeInsets.only(bottom: imageWidth / 10),
                                child: Text(
                                  "Note for the driver",
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.edit),
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
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  child: Text(
                    "Order Detial",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CartItem(imageWidth: imageWidth),
                    CartItem(imageWidth: imageWidth),
                    CartItem(imageWidth: imageWidth),
                    CartItem(imageWidth: imageWidth),
                  ],
                ),
              ),
            ),
            Divider(height: 1, thickness: 0.5, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Payment Option",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: new MaterialButton(
                    onPressed: () {},
                    height: MediaQuery.of(context).size.width / 7,
                    child: new Text(
                      "Cash on Delivery",
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
                  // child: InkWell(
                  child: Container(
                    // margin: EdgeInsets.only(left: 2),
                    decoration: BoxDecoration(
                      // color: changeColor ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.greenAccent, width: 2),
                      // color: Colors.green
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: imageWidth / 2.2,
                            width: imageWidth / 2.2,
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // onTap: () {
                  // setState(() {
                  //   changeColor = !changeColor;
                  // });
                  // },
                  // ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Shipping Subtotal:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "\$3",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black,
            ),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        padding: EdgeInsets.only(right: 5, bottom: 3),
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: new Text(
                "Total Payment:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: new Text(
                "\$21",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )),
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
                color: Color(0xFFcc821e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    @required this.imageWidth,
  }) : super(key: key);

  final double imageWidth;

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
              height: imageWidth / 1.5,
              width: imageWidth / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/breed.jpg'),
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Feather.trash),
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
                        "\$10",
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(FontAwesome.long_arrow_right),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "\$5",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Feather.plus_square),
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
                        icon: Icon(Feather.minus_square),
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
