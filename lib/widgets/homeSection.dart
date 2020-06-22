import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'foodItem.dart';

class HomeSection extends StatefulWidget {
  final String title;
  final List<Widget> listItem;

  const HomeSection({
    Key key,
    this.title = 'Food near you',
    this.listItem = list,
  }) : super(key: key);

  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    widget.listItem.shuffle();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.listItem,
          ),
        ),
      ],
    );
  }
}

List<Widget> getRandomList() {
  list.shuffle();
  return list;
}

const list = [
  FoodItem(
    name: 'Bread',
    image: 'assets/images/bread.jpg',
    availableItem: 1,
    discount: 0.45,
    price: 10,
  ),
  FoodItem(
    name: 'Cake',
    image: 'assets/images/cake.jpg',
    availableItem: 0,
    discount: 0.45,
    price: 20,
  ),
  FoodItem(
    name: 'Water bottle',
    image: 'assets/images/water_bottle.jpg',
    availableItem: 7,
    discount: 0.35,
    price: 10,
    unit: "bottle",
  ),
  FoodItem(
    name: 'Water bottle 2',
    image: 'assets/images/water_bottle.jpg',
    availableItem: 20,
    discount: 0.35,
    price: 10,
    unit: "bottle",
  ),
];
