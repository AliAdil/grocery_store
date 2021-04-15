import 'package:flutter/material.dart';

const _backgroudColor = Color(0XFFF6F5F2);

class GroceryStoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _AppBarGrocery(),
        ],
      ),
    );
  }
}

class _AppBarGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: _backgroudColor,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            'Fruit and vegetables',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
          IconButton(
              icon: Icon(
                Icons.settings,
              ),
              onPressed: () => null)
        ],
      ),
    );
  }
}
