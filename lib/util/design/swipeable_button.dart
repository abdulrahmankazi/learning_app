import 'package:flutter/material.dart';

class SwipeableButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key('button'),
      direction: DismissDirection.horizontal,
      background: Container(
        color: Colors.black,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
      onDismissed: (direction) {
        print('Button dismissed');
      },
      child: Stack(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const Center(
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            bottom: 10,
            child: Container(
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
