import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',  // 로고 이미지 경로를 입력하세요.
              fit: BoxFit.contain,
              height: 32.h,  // 로고의 높이를 설정하세요.
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 8.h),  // 로고와 이름 사이의 간격을 조절하세요.
              child: Text('Trippy'),  // 앱 이름을 입력하세요.
            )
          ],
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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