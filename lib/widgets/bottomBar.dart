import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const BottomBar({
    Key key,
    @required this.currentIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(size: 30),
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,    
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FontAwesome.history),
          title: Text('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(AntDesign.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(AntDesign.user),
          title: Text('Profile'),
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onTap,
    );
  }
}
