import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trippy/main_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  //, required this.title
  //final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Container(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: Column(
                children: [
                  const Text(
                    '누르면 숫자올라가는 버튼',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),

            Container(
              width: 300.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.sp),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.shade400.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text('노란색 shadow',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ))),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
