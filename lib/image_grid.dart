import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageGrid extends StatefulWidget {
  @override
  _ImageGridState createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  List<Map<String, String>> items = [
    {
      'image': 'assets/carousel/osaka.webp',
      'text1': 'OSAKA',
      'text2': '일본 오사카'
    },
    {
      'image': 'assets/carousel/bangkok.jpg',
      'text1': 'BANGKOK',
      'text2': '태국 방콕'
    },
    {
      'image': 'assets/carousel/danang.jpg',
      'text1': 'DANANG',
      'text2': '베트남 다낭'
    },
    {
      'image': 'assets/carousel/cebu.jpg',
      'text1': 'CEBU',
      'text2': '필리핀 세부'
    },
    {
      'image': 'assets/carousel/guam.jpg',
      'text1': 'GUAM',
      'text2': '괌 괌'
    },
    {
      'image': 'assets/carousel/hongkong.jpg',
      'text1': 'HONGKONG',
      'text2': '중국 홍콩'
    },
    // 필요한만큼 추가
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 200.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // 한 행에 두 개의 이미지가 오도록 설정
        ),
        scrollDirection: Axis.horizontal, // 가로로 스크롤하도록 설정
        itemCount: 6,
        itemBuilder: (context, position) {
          return Stack(
            children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
              items[position]['image']!,  // 로고 이미지 경로를 입력하세요.
                fit: BoxFit.contain,
                height: 130.h,
              ),
            ),
          ),
              Positioned( // 텍스트를 이미지 위에 놓음
                top: 10.w,
                left: 10.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      items[position]['text1']!, // 텍스트
                      style: TextStyle(fontSize: 13.0.sp, fontWeight: FontWeight.w700,color: Colors.white),
                    ),
                    Text(
                      items[position]['text2']!, // 텍스트
                      style: TextStyle(fontSize: 13.0.sp, fontWeight: FontWeight.w500,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
