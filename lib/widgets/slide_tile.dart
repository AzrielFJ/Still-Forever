import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme.dart';

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;
  SlideTile({required this.imagePath, required this.title, required this.desc});
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          Image.asset(imagePath,fit: BoxFit.fill,height: 250.h,width: MediaQuery.of(context).size.width-(2*30.w),),
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width-2*60.w,
            child: Text(title, textAlign: TextAlign.center,style: whiteTextStyle.copyWith(fontSize: 24,fontWeight: FontWeight.bold
            )),
          ),
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width-2*30.w,
              child: Text(desc, textAlign: TextAlign.justify,style: regularTextStyle.copyWith(fontSize: 16,color: whiteColor,fontWeight: FontWeight.w500)))
        ],
      );
  }
}