import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../theme.dart';
import '../widgets/slide_tile.dart';
import 'journey_model.dart';

class JourneyPage extends StatefulWidget {

  @override
  State<JourneyPage> createState() => _JourneyPageState();
}

class _JourneyPageState extends State<JourneyPage> with SingleTickerProviderStateMixin {
   PageController pageController = PageController();
   List<WalkthroughModel> mySLides =[];
  int slideIndex = 0;
  TextEditingController textEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool isComplete=false;
  String accessCode="";

  @override
  void initState() {
    mySLides = getSlides();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: darkBlueColor,
        body: SafeArea(
          child: Center(
            child: PageView.builder(
              itemCount: mySLides.length,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
                    child: SlideTile(imagePath: mySLides[index].imageAssetPath!, title: mySLides[index].title!, desc: mySLides[index].desc!));
              },

            ),
          ),
        ),
      bottomNavigationBar: Container(
          color: darkBlueColor,
          margin: EdgeInsets.only(bottom: 70.h),
          height: 50,
          child: Center(
            child: SmoothPageIndicator(
              controller: pageController, count: mySLides.length,
              effect:  WormEffect(
                  spacing:  8.0,
                  radius:  12.0,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  whiteColor,
                  activeDotColor:  whiteColor
              ),
            ),
          )
      ),
    );
  }


}



