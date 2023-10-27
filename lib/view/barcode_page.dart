import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stillthesame/theme.dart';
import 'package:stillthesame/view/home_page.dart';
import 'package:stillthesame/view/scan_barcode_page.dart';

class BarcodePage extends StatefulWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  List<int> listImage=[1,3];
  bool isUnlock=false;


  String image1="";
  String image2="";
  String image3="";
  String image4="";
  String image5="";
  String image6="";
  String image7="";
  String image8="";
  String image9="";

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      color: image1==""?blueColor:null,
                      height: 130.h,
                      child: image1!=""?puzzle("1",image1):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                              image1=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      color: image2==""?blueColor:null,
                      height: 130.h,
                      child: image2!=""?puzzle("2",image2):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                              image2=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: image3==""?blueColor:null,
                      height: 130.h,
                      child: image3!=""?puzzle("3",image3):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image3=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 2.h),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: image4==""?blueColor:null,
                      height: 130.h,
                      child: image4!=""?puzzle("4",image4):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image4=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      color: image5==""?blueColor:null,
                      height: 130.h,
                      child: image5!=""?puzzle("5",image5):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image5=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: image6==""?blueColor:null,
                      height: 130.h,
                      child: image6!=""?puzzle("6",image6):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image6=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: image7==""?blueColor:null,
                      height: 130.h,
                      child: image7!=""?puzzle("7",image7):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image7=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      color: image8==""?blueColor:null,
                      height: 130.h,
                      child: image8!=""?puzzle("8",image8):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image8=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: image9==""?blueColor:null,
                      height: 130.h,
                      child: image9!=""?puzzle("9",image9):Center(child: IconButton(
                        icon: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30.r,),
                        onPressed: ()async{

                          var image=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanBarcodePage()));
                          if(image!=null){
                            setState(() {
                                 image9=image;
                            });
                          }
                        },
                      ),),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 10.h),
                child: SizedBox(
                  height: 40.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r), // <-- Radius
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        image1="";
                        image2="";
                        image3="";
                        image4="";
                        image5="";
                        image6="";
                        image7="";
                        image8="";
                        image9="";
                      });
                    },
                    child: Text("Reset Puzzle"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 10.h),
                child: SizedBox(
                  height: 40.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r), // <-- Radius
                      ),
                    ),
                    onPressed: () async{
                      startLoading();
                      await Future.delayed(Duration(seconds: 5));
                      if(mounted){
                        if(image1=="1"&&image2=="2"&& image3=="3"&&image4=="4"&&image5=="5"&& image6=="6"&&image7=="7"&&image8=="8"&& image9=="9"){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Puzzle belum terisi dengan benar"),backgroundColor: blueColor,));
                          stopLoading();
                        }else{
                          stopLoading();
                          SharedPreferences pref=await SharedPreferences.getInstance();
                          pref.setBool("isUnlock", true);
                          if(mounted){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);

                          }

                        }
                      }

                    },
                    child: Text("Unlock Puzzle"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

  Future<void> startLoading() async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return  Padding(
          padding:  EdgeInsets.all(100.r),
          child: Center(
            child: Lottie.asset("assets/loading_love2.json"),
          ),
        );
      },
    );
  }

  Future<void> stopLoading() async {
    //Navigator.of(context).pop();
    Navigator.of(context, rootNavigator: true).pop();
  }


  Widget puzzle(String index,String image){

        return GestureDetector(
          onDoubleTap: (){
            if(index=="1"){
             setState(() {
               image1="";
             });
            }else if(index=="2"){
              setState(() {
                image2="";
              });
            }
            else if(index=="3"){
              setState(() {
                image3="";
              });
            }
            else if(index=="4"){
              setState(() {
                image4="";
              });
            }
            else if(index=="5"){
              setState(() {
                image5="";
              });
            }
            else if(index=="6"){
              setState(() {
                image6="";
              });
            }
            else if(index=="7"){
              setState(() {
                image7="";
              });
            }
            else if(index=="8"){
              setState(() {
                image8="";
              });
            }else{
              setState(() {
                image9="";
              });
            }

          },
          child: Container(
            margin: EdgeInsets.all(1.r),
            child: Image.asset(
              "assets/image/image$image.jpg",
              fit: BoxFit.fill,
            ),
          ),
        );

  }
  // Widget puzzle(int index){
  //   if(listImage.length>index){
  //     return Container(
  //       margin: EdgeInsets.all(1.r),
  //       child: Image.asset(
  //         "assets/image/image${listImage[index]}.jpg",
  //         fit: BoxFit.fill,
  //       ),
  //     );
  //   }else{
  //     return Container(
  //         color: Colors.white,
  //         margin: EdgeInsets.all(1.r),
  //         child: Center(
  //           child: Text("${index+1}"),
  //         )
  //     );
  //   }






}
