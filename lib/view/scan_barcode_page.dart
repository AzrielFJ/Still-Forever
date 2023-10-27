import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:stillthesame/theme.dart';

import '../widgets/qr_scanner_overlay.dart';

class ScanBarcodePage extends StatefulWidget {
  const ScanBarcodePage({Key? key}) : super(key: key);

  @override
  State<ScanBarcodePage> createState() => _ScanBarcodePagState();
}

class _ScanBarcodePagState extends State<ScanBarcodePage> {
  late MobileScannerController controller;

  @override
  void initState() {
    initController();
    super.initState();
  }


  void initController() {
    controller=MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leadingWidth: 50.w,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child:Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text("Scan Qr Code",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24.sp,color: blueColor),),
      ),
      body: SafeArea(
          child:Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: MobileScanner(
                  // fit: BoxFit.contain,
                  controller: controller,
                  onDetect: (capture) async {
                    controller.stop();
                    final List<Barcode> barcodes = capture.barcodes;
                    for (final barcode in barcodes) {
                      Navigator.pop(context,barcode.rawValue);
                    }
                  },
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: QrScannerOverlayShape(
                      borderColor: Color(0xffB9B9B9),
                      borderRadius: 20.r,
                      borderLength: 20.h,
                      borderWidth: 20.w,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}