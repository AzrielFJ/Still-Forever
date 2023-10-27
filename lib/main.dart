import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_widget/home_widget.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:stillthesame/theme.dart';
import 'package:stillthesame/view/barcode_page.dart';
import 'package:stillthesame/view/home_page.dart';
import 'package:stillthesame/view/splash_screen_page.dart';


final ValueNotifier selectedIndexGlobal = ValueNotifier(0);

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (context,child){
          return MaterialApp(
            title: 'Still The Same',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: blueColor,
                primary: blueColor,
              ),
              primaryColor: blueColor,
            ),
            home: SplashScreenPage(),
          );
        }
    );
  }
}
