import 'package:flutter/material.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
                Row(
    // decoration: BoxDecoration(
    //   border: Border(bottom: BorderSide(color: Colors.grey[300]))
    // )
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 170,
            child: Opacity(
              opacity: 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80',
                  width: 150,
                  height: 125,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Colors.yellow[300],
        // ),
        width: 210,
        height: 125,
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 8
                ),
                child: Text(
                  "Bread",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 15, left: 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      "12000d ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.trending_flat,
                      size: 30,
                    ),
                    Text(
                      "  5000d  ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 5
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.pink[100],
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )
    ],
                ),
                Row(
    // decoration: BoxDecoration(
    //   border: Border(bottom: BorderSide(color: Colors.grey[300]))
    // )
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 170,
            child: Opacity(
              opacity: 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80',
                  width: 150,
                  height: 125,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Colors.yellow[300],
        // ),
        width: 210,
        height: 125,
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 8
                ),
                child: Text(
                  "Bread",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 15, left: 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      "12000d ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.trending_flat,
                      size: 30,
                    ),
                    Text(
                      "  5000d  ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 5
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.pink[100],
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )
    ],
                ),
                Row(
    // decoration: BoxDecoration(
    //   border: Border(bottom: BorderSide(color: Colors.grey[300]))
    // )
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 170,
            child: Opacity(
              opacity: 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80',
                  width: 150,
                  height: 125,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Colors.yellow[300],
        // ),
        width: 210,
        height: 125,
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 8
                ),
                child: Text(
                  "Bread",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 15, left: 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      "12000d ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.trending_flat,
                      size: 30,
                    ),
                    Text(
                      "  5000d  ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 5
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.pink[100],
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )
    ],
                ),
                Row(
    // decoration: BoxDecoration(
    //   border: Border(bottom: BorderSide(color: Colors.grey[300]))
    // )
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 170,
            child: Opacity(
              opacity: 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80',
                  width: 150,
                  height: 125,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Colors.yellow[300],
        // ),
        width: 210,
        height: 125,
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 8
                ),
                child: Text(
                  "Bread",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 15, left: 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      "12000d ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.trending_flat,
                      size: 30,
                    ),
                    Text(
                      "  5000d  ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Container(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 5
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue[600],
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.pink[100],
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )
    ],
                ),
              ]);
  }
}