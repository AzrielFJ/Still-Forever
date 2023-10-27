import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stillthesame/view/vn_model.dart';

import '../../../page_manager.dart';
import '../theme.dart';

class VnPage extends StatefulWidget {

  @override
  State<VnPage> createState() => _VnPageState();
}

class _VnPageState extends State<VnPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<VnModel> mySLides =[];
  late PageManager _pageManager;
  int selectedVn=0;
  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    _pageManager=PageManager(mySLides[selectedVn].music!);
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(_pageManager.audioPlayer.playing){
      _pageManager.dispose();
      _pageManager=PageManager(mySLides[selectedVn].music!);
      _pageManager.play();
    }else{
      _pageManager.dispose();
      _pageManager=PageManager(mySLides[selectedVn].music!);
      _pageManager.play();
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(mySLides[selectedVn].title!,style: blackTextStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w600),),
            Text(mySLides[selectedVn].date!,style: blackTextStyle.copyWith(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top:20,bottom: 10),
              child: Column(
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(100), // Image radius
                      child: SvgPicture.asset('assets/svg/vn.svg',fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ValueListenableBuilder<ProgressBarState>(
                    valueListenable: _pageManager.progressNotifier,
                    builder: (_, value, __) {
                      return Container(
                        width: 250,
                        child: ProgressBar(
                          thumbColor: blackColor,
                          progressBarColor: blackColor,
                          baseBarColor: greyColor,
                          progress: value.current,
                          buffered: value.buffered,
                          total: value.total,
                          onSeek: _pageManager.seek,
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.skip_previous),
                        iconSize: 32.0,
                        onPressed: () {
                          setState((){
                            if(selectedVn>0){
                              selectedVn=selectedVn-1;
                            }else{
                              selectedVn=mySLides.length-1;
                            }
                          });

                        },
                      ),
                      ValueListenableBuilder<ButtonState>(
                        valueListenable: _pageManager.buttonNotifier,
                        builder: (_, value, __) {
                          switch (value) {
                            case ButtonState.paused:
                              return IconButton(
                                icon: const Icon(Icons.play_arrow),
                                iconSize: 32.0,
                                onPressed: () {_pageManager.play();},
                              );
                            case ButtonState.playing:
                              return IconButton(
                                icon: const Icon(Icons.pause),
                                iconSize: 32.0,
                                onPressed: () {_pageManager.pause();},
                              );
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_next),
                        iconSize: 32.0,
                        onPressed: () {
                          setState((){
                            if(selectedVn<mySLides.length-1){
                              selectedVn=selectedVn+1;
                            }else{
                              selectedVn=0;
                            }

                          });
                        },
                      )
                    ],
                  ),
                ],),
            ),
            Divider(color: blackColor,thickness: 3,),
            Expanded(
                child: ListView.builder(
                    itemCount: mySLides.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context,int index){
                  return InkWell(
                    onTap: (){
                      setState((){
                        selectedVn=index;
                      });

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("${index+1}",style: blackTextStyle.copyWith(fontSize: 20),),
                              SizedBox(width: 20,),
                              SvgPicture.asset('assets/svg/vn.svg',width: 60,),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mySLides[index].title!,style: blackTextStyle.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text(mySLides[index].date!),
                                ],
                              ),

                            ],
                          ),
                          Divider(thickness: 1,color: greyColor,)
                        ],
                      ),
                    ),
                  );
                }
                )
            )
          ],

        ),
      ),
    );
  }
}
