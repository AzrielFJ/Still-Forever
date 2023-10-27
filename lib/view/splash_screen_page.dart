import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stillthesame/view/barcode_page.dart';
import 'package:stillthesame/view/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    loading();
    super.initState();
  }

  loading()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   bool isScan= sharedPreferences.getBool("isScan")??false;
   await Future.delayed(Duration(seconds: 5));
   if(isScan){
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);
   }else{
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BarcodePage()), (route) => false);

   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/loading_love.json"),
      ),
    );
  }
}
