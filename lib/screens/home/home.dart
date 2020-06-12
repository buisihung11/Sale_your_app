import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sale_your_food/screens/home/widgets/index.dart';
import 'package:sale_your_food/widgets/bottomBar.dart';
import 'package:sale_your_food/widgets/foodItem.dart';
import 'package:sale_your_food/widgets/homeCarousel.dart';
import 'package:sale_your_food/widgets/restaunrant.dart';

import '../profile.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  static const List<Widget> _screens = <Widget>[
    Text(
      'Page 2',
    ),
    HomeScreen(),
    ProfileScreen(),
  ];

  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            // Header
            HomeHeader(),
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
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
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
                          name: 'Water bottle',
                          image: 'assets/images/water_bottle.jpg',
                          availableItem: 20,
                          discount: 0.35,
                          price: 10,
                          unit: "bottle",
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
                          'Market around you',
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
    );
  }
}
