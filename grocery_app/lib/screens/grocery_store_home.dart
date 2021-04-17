import 'package:flutter/material.dart';

const _backgroudColor = Color(0XFFF6F5F2);
const _cartBarHeight = 100.0;

class GroceryStoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          _AppBarGrocery(),
          Expanded(
              child: Stack(
            children: [
              Center(
                child: ElevatedButton(
                  child: Text('Woolha.com'),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              ),

              // Positioned(
              //   left: 0,
              //   right: 0,
              //   top: -_cartBarHeight,
              //   height: size.height - kToolbarHeight,
              //   child: Container(
              //     color: Colors.white,
              //   ),
              // ),
              // Positioned(
              //   left: 0,
              //   right: 0,
              //   top: 0,
              //   height: size.height - kToolbarHeight,
              //   child: Container(
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ))
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
