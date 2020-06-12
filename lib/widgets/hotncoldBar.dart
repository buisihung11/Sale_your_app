import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HotNColdBar extends StatelessWidget {
  const HotNColdBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}