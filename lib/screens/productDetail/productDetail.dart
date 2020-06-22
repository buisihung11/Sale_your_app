import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({Key key, this.name}) : super(key: key);
  final String name;
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Hero(
                  tag: widget.name,
                  child: ClipRRect(
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.asset(
                        "assets/images/water_bottle.jpg",
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Text("Product Detail - ${widget.name}"),
            ],
          ),
        ),
      ),
    );
  }
}
