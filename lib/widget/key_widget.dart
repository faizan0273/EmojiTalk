// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyWidget extends StatelessWidget {
  var textVal;
  var image;
  var containerClr;
  KeyWidget({
    required this.textVal,
    required this.image,
    this.containerClr,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 135.w,
      decoration: BoxDecoration(
          color: containerClr ?? const Color.fromRGBO(246, 245, 246, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(219, 215, 215, 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(4.w, 10.h, 4.w, 10.h),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: const Color.fromRGBO(219, 215, 215, 1),
              ),
            ),
            child: Text(
              textVal.toString(),
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Image.asset(
            image.toString(),
            height: 48.h,
            width: 105.w,
          )
        ],
      ),
    );
  }
}

/// just text key widget
class textKeyWidget extends StatelessWidget {
  var textVal;

  var containerClr;
  textKeyWidget({
    required this.textVal,
    this.containerClr,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 135.w,
      decoration: BoxDecoration(
          color: containerClr ?? const Color.fromRGBO(246, 245, 246, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(219, 215, 215, 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            padding: EdgeInsets.fromLTRB(4.w, 10.h, 4.w, 10.h),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: const Color.fromRGBO(219, 215, 215, 1),
              ),
            ),
            child: Center(
              child: Text(
                textVal.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
