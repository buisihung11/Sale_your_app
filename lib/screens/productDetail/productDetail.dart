import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sale_your_food/widgets/foodItem.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({Key key, this.food}) : super(key: key);
  final FoodItem food;
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            ProductDetailHeader(widget: widget),
            Positioned(
              child: AppBar(
                centerTitle: true,
                title: Text(widget.food.name),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailHeader extends StatelessWidget {
  const ProductDetailHeader({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Hero(
            tag: widget.food,
            child: ClipRRect(
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  widget.food.image,
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Text("Product Detail - ${widget.food.name}"),
      ],
    );
  }
}
