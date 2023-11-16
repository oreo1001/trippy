import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 40.h,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 8.h),  // 로고와 이름 사이의 간격을 조절하세요.
            child: Text('Trippy',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500
                )),
          ),
          Divider(height: 5.h),
        ],
      ),
    );
  }
}