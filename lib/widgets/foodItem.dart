import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sale_your_food/constrants.dart';
import 'package:sale_your_food/screens/productDetail/productDetail.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class FoodItem extends StatelessWidget {
  final String name;
  final String unit;
  final double price;
  final double discount;
  final int availableItem;
  final String image;
  final String remainTime;
  final String id;
  const FoodItem({
    Key key,
    this.name,
    this.price,
    this.discount,
    this.availableItem,
    this.image,
    this.unit = "piece",
    this.remainTime = "2 days",
    this.id,
  }) : super(key: key);

  String getId() {
    return uuid.v1().toString();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Click item $name');
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => ProductDetailScreen(
            food: this,
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Opacity(
          opacity: availableItem == 0 ? 0.5 : 1,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Hero(
                tag: this,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      image,
                      width: 170,
                      height: 190,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              FoodItemBanners(
                  availableItem: availableItem,
                  unit: unit,
                  remainTime: remainTime),
              Positioned(
                bottom: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 90,
                                    child: Text(
                                      name,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        EvilIcons.location,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "3km",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      '-${(discount * 100).floor()}%',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '\$$price',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white70,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' \$${price * (1 - discount)}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FoodItemBanners extends StatelessWidget {
  const FoodItemBanners({
    Key key,
    @required this.availableItem,
    @required this.unit,
    @required this.remainTime,
  }) : super(key: key);

  final int availableItem;
  final String unit;
  final String remainTime;

  dynamic _getItemLeftColor() {
    if (availableItem == 0)
      return noItemLeft;
    else if (availableItem < 5)
      return lowItemLeft;
    else if (availableItem >= 5 && availableItem <= 10)
      return mediumItemLeft;
    else
      return highItemLeft;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _getItemLeftColor()['background'],
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: _getItemLeftColor()['border-color'], width: 1),
            ),
            child: Text(
              '$availableItem $unit left',
              style: TextStyle(
                color: _getItemLeftColor()['color'],
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: _getItemLeftColor()['background'],
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: _getItemLeftColor()['border-color'], width: 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  EvilIcons.clock,
                  size: 13,
                ),
                Text(
                  '$remainTime',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _getItemLeftColor()['color'],
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
