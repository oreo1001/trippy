import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trippy/main_appbar.dart';
import 'package:trippy/searchbar.dart';

import 'image_grid.dart';
import 'image_slider.dart';
import 'image_slider2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.h,),
                Text('나만의 AI 여행 플래너',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600)),
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: <Color>[Colors.blue, Colors.cyan.shade200],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds),
                  child: Text(
                    '10분만에 여행 계획을 세워보세요!',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                ),
                SizedBox(height:10.h),
                Text('추천 여행지 TOP 10',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600)),
                ImageGrid(),
                ImageSlider2(),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/chat');
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.lightBlue,
                        backgroundColor: Colors.yellowAccent.shade100,
                        fixedSize: Size(200, 50),
                        elevation: 10.0),
                    child: Text('ChatScreen으로 가기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
