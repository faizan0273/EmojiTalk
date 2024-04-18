import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget topBar(TextEditingController _controller, VoidCallback onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
    child: Row(
      children: [
        Expanded(
            child: TextField(
          controller: _controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(2),
              border: InputBorder.none,
              hintText: 'Display Text....',
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400)),
        )),
        Image.asset(
          'assets/images/arroww.png',
          height: 56.h,
          width: 56.w,
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            'assets/images/vol.png',
            height: 56.h,
            width: 56.w,
          ),
        ),
      ],
    ),
  );
}
