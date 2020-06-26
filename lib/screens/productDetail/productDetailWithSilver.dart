import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sale_your_food/widgets/foodItem.dart';
import 'package:sale_your_food/widgets/homeSection.dart';

const defaultItem = FoodItem(
  name: 'Water bottle 3',
  image: 'assets/images/water_bottle.jpg',
  availableItem: 20,
  discount: 0.35,
  price: 10,
  unit: "bottle",
);

class ProductDetailWithSilver extends StatefulWidget {
  const ProductDetailWithSilver({Key key, this.food = defaultItem})
      : super(key: key);
  final FoodItem food;
  @override
  _ProductDetailWithSilverState createState() =>
      _ProductDetailWithSilverState();
}

class _ProductDetailWithSilverState extends State<ProductDetailWithSilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ProductDetailBottom(food: widget.food),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // IconButton(icon: Icon(AntDesign.back), onPressed: () {
                //   Navigator.of(context).pop();
                // }),
                // Text("Title App bar"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffb000),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        icon: Icon(
                          AntDesign.shoppingcart,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                ),
              ],
            ),
            pinned: true,
            expandedHeight: 210.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Hero(
                  tag: widget.food,
                  child: ClipRRect(
                    child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        widget.food.image,
                        width: MediaQuery.of(context).size.width,
                        // height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                // height: 500,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(30, 20, 20, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.food.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ProductDetailInfo(
                              icon: Image.asset(
                                'assets/images/icons/clock.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              prefix: "Expire in: ",
                              content: widget.food.remainTime,
                            ),
                            ProductDetailInfo(
                              icon: Image.asset(
                                'assets/images/icons/box.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              prefix: "Quantity: ",
                              content: widget.food.availableItem.toString() +
                                  " " +
                                  widget.food.unit,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/icons/price.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 5),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Price: ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$${widget.food.price}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      decoration: TextDecoration.lineThrough,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' \$${widget.food.price * (1 - widget.food.discount)}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffff9f0a),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Description: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        HomeSection(
                          title: "Same category",
                          listItem: getRandomList(list3),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

List<Widget> getRandomList(List<Widget> input) {
  List<Widget> newList = List.from(input);
  newList.shuffle();
  return newList;
}

var list3 = [
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
    name: 'Water bottle 2',
    image: 'assets/images/water_bottle.jpg',
    availableItem: 20,
    discount: 0.35,
    price: 10,
    unit: "bottle",
  ),
];

class ProductDetailInfo extends StatelessWidget {
  const ProductDetailInfo({
    Key key,
    this.icon,
    this.prefix,
    this.content,
  }) : super(key: key);

  final Widget icon;
  final String prefix;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(width: 5),
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: prefix,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            TextSpan(
              text: content,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color(0xffff9f0a),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class ProductDetailBottom extends StatefulWidget {
  const ProductDetailBottom({
    Key key,
    this.food,
  }) : super(key: key);

  final FoodItem food;

  @override
  _ProductDetailBottomState createState() => _ProductDetailBottomState();
}

class _ProductDetailBottomState extends State<ProductDetailBottom> {
  int quantity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      quantity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: Color(0xffffeedc),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xffff9f0a), //                   <--- border color
                width: 2,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color(
                            0xffff9f0a), //                   <--- border color
                        width: 2,
                      ),
                    ),
                  ),
                  child: IconButton(
                      icon: Icon(
                        AntDesign.minus,
                        color: Colors.black,
                        size: 15,
                      ),
                      onPressed: () {
                        if (widget.food.availableItem <= 0) return;
                        setState(() {
                          if (quantity > 1) quantity = quantity - 1;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 20),
                  child: Text(
                    quantity.toString(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(
                            0xffff9f0a), //                   <--- border color
                        width: 2,
                      ),
                    ),
                  ),
                  child: IconButton(
                      icon: Icon(
                        AntDesign.plus,
                        color: Colors.black,
                        size: 15,
                      ),
                      onPressed: () {
                        setState(() {
                          if (widget.food.availableItem <= 0) return;
                          if (quantity < widget.food.availableItem)
                            quantity = quantity + 1;
                        });
                      }),
                ),
              ],
            ),
          ),
          widget.food.availableItem != 0
              ? ButtonTheme(
                  minWidth: 180,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Color(0xffffb000),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.red),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/images/icons/hero.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Please come later",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/icons/sign.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
