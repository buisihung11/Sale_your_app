import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantItem extends StatelessWidget {
  final String name;
  final String address;
  final double star;
  final Widget image;
  const RestaurantItem({
    Key key,
    this.name,
    this.address,
    this.star,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Opacity(
        opacity: 1,
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Opacity(
                opacity: 0.7,
                child: image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
