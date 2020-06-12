import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../cart.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CategoryItem(
              title: 'Drink',
              icon: Icon(
                SimpleLineIcons.cup,
                size: 32,
                color: Color(0xFFcc821e),
              )),
        ),
        Expanded(
          child: CategoryItem(
              title: 'Meal',
              icon: Icon(
                MaterialCommunityIcons.pig,
                size: 32,
                color: Color(0xFFf3cb67),
              )),
        ),
        Expanded(
          child: CategoryItem(
              title: 'Fish',
              icon: Icon(
                MaterialCommunityIcons.fish,
                size: 32,
                color: Color(0xFF67f3e2),
              )),
        ),
        Expanded(
          child: CategoryItem(
              title: 'Vegetables',
              icon: Icon(
                MaterialCommunityIcons.food_apple,
                size: 32,
                color: Colors.deepOrange,
              )),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final Icon icon;
  const CategoryItem({
    Key key,
    @required this.title,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(icon: icon, onPressed: () {}),
        Text(title),
      ],
    );
  }
}

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(FontAwesome.search),
        suffixIcon: IconButton(
          icon: Icon(MaterialIcons.clear),
          onPressed: () {
            print('Clear input');
          },
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xffff9f0a),
            )),
        labelText: 'Find restaurant or food',
        labelStyle: TextStyle(color: Colors.black38),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Text('Your location'),
                Row(
                  children: <Widget>[
                    Icon(
                      EvilIcons.location,
                      color: Color(0xffff9f0a),
                    ),
                    Text(
                      'HCM, Q9',
                      style: TextStyle(color: Color(0xFF7cd175)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'SYF',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(
                    AntDesign.shoppingcart,
                    color: Color(0xffff9f0a),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => CartScreen()));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
