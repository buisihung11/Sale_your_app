import 'package:flutter/material.dart';

class OrderDetailUnfinished extends StatefulWidget {
  const OrderDetailUnfinished({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OrderDetailUnfinishedState();
}

class OrderDetailUnfinishedState extends State<OrderDetailUnfinished>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'ORDER No.420',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 120,
                    color: Colors.deepOrange[200],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pickup Location",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "7/11, Fpt University",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 120,
                    color: Colors.amber[100],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'TOTAL',
                            style: TextStyle(
                              //color: Colors.orange[200],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, bottom: 5),
                          child: Text(
                            "30.00\$",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(33)),
                            color: Colors.red,
                          ),
                          child: Text(
                            'Unfinished',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TabBar(
                labelColor: Colors.amber[600],
                controller: tabController,
                indicatorColor: Colors.amber[300],
                indicatorWeight: 2,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 17,
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'Detail',
                    icon: Icon(Icons.shopping_cart),
                  ),
                  Tab(
                    text: 'Checkout',
                    icon: Icon(Icons.account_balance_wallet),
                  )
                ],
              ),
              Container(
                //color: Colors.blueGrey[50],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                alignment: Alignment.center,
                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.deepOrange[50],
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      image:
                                          AssetImage("assets/images/cake.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  //color: Colors.blue,
                                  padding: EdgeInsets.all(8),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 8,
                                            ),
                                            child: Text(
                                              'Cake (',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              // ),
                                              Text(
                                                '4\$)',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 8,
                                              right: 2,
                                            ),
                                            child: Text(
                                              'Quantity:',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(22.0),
                                    child: Text(
                                      '20\$',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            color: Colors.deepOrange[50],
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/water_bottle.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  //color: Colors.blue,
                                  padding: EdgeInsets.all(8),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 8,
                                            ),
                                            child: Text(
                                              'Red Bull (',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                '5\$)',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 8,
                                              right: 2,
                                            ),
                                            child: Text(
                                              'Quantity:',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(22.0),
                                    child: Text(
                                      '10\$',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.blue,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/images/qr-code.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
