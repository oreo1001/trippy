import 'package:flutter/material.dart';

class ImageSlider2 extends StatefulWidget {
  @override
  _ImageSlider2State createState() => _ImageSlider2State();
}

class _ImageSlider2State extends State<ImageSlider2> {
  int currentPage = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        itemBuilder: (context, position) {
          return Container(
            margin: EdgeInsets.all(8.0),
            color: Colors.amber,
            child: Center(
              child: Text(
                'Page $position',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}