import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_return,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
