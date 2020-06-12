import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}