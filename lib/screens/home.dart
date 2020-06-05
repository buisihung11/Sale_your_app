import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sale_your_food/widgets/foodItem.dart';
import 'package:sale_your_food/widgets/homeCarousel.dart';
import 'package:sale_your_food/widgets/restaunrant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              SizedBox(height: 15),
              // Food near you
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Food near you',
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
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Top market',
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
                    SizedBox(height: 15),
                    Container(
                      height: 240,
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          RestaurantItem(
                            name: 'Vinmart',
                            image: Image.asset(
                              'assets/images/restaurant1.jpg',
                              width: 300,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            address: 'Tay Hoa, Q9',
                            rating: 5,
                          ),
                          RestaurantItem(
                            name: 'Vietnamese Restaurant',
                            image: Image.asset(
                              'assets/images/restaurant2.jpg',
                              width: 300,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            address: 'Dien Bien Phu, Q.Binh Thanh',
                            rating: 4.5,
                          ),
                          RestaurantItem(
                            name: 'Bread',
                            image: Image.asset(
                              'assets/images/restaurant3.jpg',
                              width: 300,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            address: 'Le Van Viet, Q9',
                            rating: 3.5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
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
    return Row(
      children: <Widget>[
        Column(
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
        Expanded(child: Text('')),
        IconButton(
            icon: Icon(
              AntDesign.shoppingcart,
              color: Color(0xffff9f0a),
            ),
            onPressed: () {}),
      ],
    );
  }
}
