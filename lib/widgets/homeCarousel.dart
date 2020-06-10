import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeCarouselState();
  }
}

class _HomeCarouselState extends State<HomeCarousel> {
  final List<String> imgList = [
    'assets/images/banner_thumnb.png',
    'assets/images/banner_thumnb2.png',
    'assets/images/banner_thumnb3.jpg',
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Column(children: [
            CarouselSlider(
              items: imgList.map((img) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        // decoration: BoxDecoration(
                        //   color: Colors.amber,
                        // ),
                        child: Image.asset(
                          img,
                          fit: BoxFit.fitWidth,
                        ));
                  },
                );
              }).toList(),
              options: CarouselOptions(
                  height: 150,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                // bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Text(
            'HOT\nDEAL',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
