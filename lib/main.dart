import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:trippy/routes.dart';
void main() {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //화면 위로가게 회전방지
  runApp(const GetMaterialApp(home: MyApp()));
}
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context,child){
      return MaterialApp(
        title: '트리피',
        debugShowCheckedModeBanner: false, // 디버깅 아이콘 X
        theme: ThemeData(
            useMaterial3: true,
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: MaterialStateProperty.all(true),
              thickness: MaterialStateProperty.all(10),
              thumbColor: MaterialStateProperty.all(Colors.amber),
              radius: const Radius.circular(10),
            )),
        initialRoute: "/main",
        routes: route,
        builder: (context, widget) {
          return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
      );
      });
  }
}