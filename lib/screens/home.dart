import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sale_your_food/widgets/foodItem.dart';
import 'package:sale_your_food/widgets/homeCarousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // Header
              HomeHeader(),
              SizedBox(height: 10),
              // Search
              HomeSearch(),
              SizedBox(height: 15),
              // Banner Carousel
              HomeCarousel(),
              // Categories
              Categories(),
              SizedBox(
                height: 15
              ),
              // Food near you
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Food near you',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FoodItem(
                            name: 'Bread',
                            image: Image.asset(
                              'assets/images/bread.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 1,
                            discount: 0.45,
                            price: 10,
                          ),
                          FoodItem(
                            name: 'Cake',
                            image: Image.asset(
                              'assets/images/cake.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 0,
                            discount: 0.45,
                            price: 20,
                          ),
                          FoodItem(
                            name: 'Water bottle',
                            image: Image.asset(
                              'assets/images/water_bottle.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 1,
                            discount: 0.35,
                            price: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Top Restaurant
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Top Restaurant',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FoodItem(
                            name: 'Bread',
                            image: Image.asset(
                              'assets/images/bread.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 1,
                            discount: 0.45,
                            price: 10,
                          ),
                          FoodItem(
                            name: 'Cake',
                            image: Image.asset(
                              'assets/images/cake.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 0,
                            discount: 0.45,
                            price: 20,
                          ),
                          FoodItem(
                            name: 'Water bottle',
                            image: Image.asset(
                              'assets/images/water_bottle.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            availableItem: 1,
                            discount: 0.35,
                            price: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
        ),
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
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('Your location'),
            Row(
              children: <Widget>[
                Icon(EvilIcons.location),
                Text(
                  'HCM, Q9',
                  style: TextStyle(color: Color(0xFF7cd175)),
                )
              ],
            ),
          ],
        ),
        Expanded(child: Text('')),
        IconButton(icon: Icon(AntDesign.shoppingcart), onPressed: () {}),
      ],
    );
  }
}
