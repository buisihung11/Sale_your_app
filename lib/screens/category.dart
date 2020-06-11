import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   toolbarOpacity: 0,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1560781290-7dc94c0f8f4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1875&q=80',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: CategoryHeader(),
                  ),
                  Container(
                    //color: Colors.amber,
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomCenter,

                    
                    child: Text(
                      "MEAT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.red[100],
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    //padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey[400])),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 195,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey[300],
                            // border: Border.all(
                            //     width: 1,
                            //     style: BorderStyle.solid,
                            //     color: Colors.black)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Hot Today ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                MdiIcons.fire,
                                size: 25,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 195,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            //color: Colors.lime[300],
                            // border: Border.all(
                            //     width: 1,
                            //     style: BorderStyle.solid,
                            //     color: Colors.black)),
                          ),
                          child: Text(
                            "All Products",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[300]))),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 280,
                          height: 40,
                          decoration: BoxDecoration(
                            border:
                                Border(right: BorderSide(color: Colors.black)),
                            //color: Colors.grey[300],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  left: 10,
                                ),
                                padding: EdgeInsets.only(
                                  top: 4,
                                ),
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Text(
                                  "Filter Tag 1    X",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 10,
                                ),
                                padding: EdgeInsets.only(
                                  top: 4,
                                ),
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Text(
                                  "Filter Tag 2    X",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 40,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.yellow[300],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                MdiIcons.filter,
                                size: 20,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 2,
                                ),
                                child: Text(
                                  "Filter",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                  child: Column(children: <Widget>[
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
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.arrow_back_ios),
        Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 270,
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              labelText: 'Search Category',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.cancel),
            ),
          ),
        ),
        Icon(Icons.shopping_cart),
      ],
    );
  }
}
