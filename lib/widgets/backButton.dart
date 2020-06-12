import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }
}
