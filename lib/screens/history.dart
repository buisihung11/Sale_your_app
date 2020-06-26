import 'package:flutter/material.dart';
import 'history_item_finished.dart';
import 'history_item_unfinished.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
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
            'HISTORY',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.amber[300],
            indicatorWeight: 2,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 16,
            ),
            tabs: <Widget>[
              Tab(
                text: 'Ongoing',
                icon: Icon(Icons.access_time),
              ),
              Tab(
                text: 'Finished',
                icon: Icon(Icons.assignment_turned_in),
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              OngoingWidget(),
              FinishedWidget(),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }
}

class OngoingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ordernumber = Text(
      'Order No.420',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );

    var pickupdetails = Text(
      'Pickup At: 4 P.M (29/06/2020)',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    var status = Text(
      'Unfinished',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );

    return Column(
      children: <Widget>[
        HistoryItemUnfinished(ordernumber: ordernumber, pickupdetails: pickupdetails, status: status),
        Divider(),
        HistoryItemUnfinished(ordernumber: ordernumber, pickupdetails: pickupdetails, status: status),
        Divider(),
      ],
    );
  }
}

class FinishedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ordernumber = Text(
      'Order No.69',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );

    var pickupdetails = Text(
      'Picked-Up At: 11.27 A.M (15/06/2020)',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    var status = Text(
      'Completed',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );

    return Column(
      children: <Widget>[
        HistoryItemFinished(ordernumber: ordernumber, pickupdetails: pickupdetails, status: status),
        Divider(),
      ],
    );
  }
}


