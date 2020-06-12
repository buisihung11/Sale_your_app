import 'package:flutter/material.dart';
import 'package:sale_your_food/screens/home/widgets/index.dart';
import 'package:sale_your_food/widgets/filterBar.dart';
import 'package:sale_your_food/widgets/hotncoldBar.dart';
import 'package:sale_your_food/widgets/listProducts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1560781290-7dc94c0f8f4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1875&q=80',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: CategoryHeader(),
                  ),
                  Container(
                    //color: Colors.amber,
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomCenter,

                    
                    child: Text(
                      "MEAT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.red[100],
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  HotNColdBar()
                ],
              ),
              Stack(
                children: <Widget>[
                  FilterBar()
                ],
              ),
              SingleChildScrollView(
                  child: ListProducts())
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        BackButton(),
        Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 270,
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              labelText: 'Search Category',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.cancel),
            ),
          ),
        ),
        CartButton(),
      ],
    );
  }
}
