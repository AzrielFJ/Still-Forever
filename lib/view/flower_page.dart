import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:stillthesame/theme.dart';

class FlowerPage extends StatefulWidget {
  const FlowerPage({Key? key}) : super(key: key);

  @override
  State<FlowerPage> createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text("My feeling is the same yesterday, today, and forever",style: GoogleFonts.carattere(
                textStyle: TextStyle(color: Colors.white,fontSize: 35.sp,),
              ),textAlign: TextAlign.center,),
            ),

            Expanded(
              child: ModelViewer(
                backgroundColor: blueColor,
                src: 'assets/rose.glb',
                alt: 'Sun x Flower',
                ar: true,
                autoPlay: true,
                arModes: ['scene-viewer', 'webxr', 'quick-look'],
                autoRotate: true,
              ),
            ),
          ],
        ),
      )
    );
  }
}
