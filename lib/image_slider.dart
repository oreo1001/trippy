import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentPage = 0;
  PageController pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx < 0) {
          pageController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        }
      },
      child: Container(
        width: 200.w,
        height:300.h,
        child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return Container(
              width: 200.w,
              height:200.h,
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
      ),
    );
  }
}