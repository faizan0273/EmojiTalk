import 'package:emoji_keyboard/homepage_screen1.dart';
import 'package:emoji_keyboard/homepage_screen2.dart';
import 'package:emoji_keyboard/homepage_screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bottomBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Center(
      child: Row(
        children: [
          Image.asset(
            'assets/images/homee.png',
            height: 56.h,
            width: 56.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            'assets/images/keyboard.png',
            height: 56.h,
            width: 56.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            'assets/images/setting.png',
            height: 56.h,
            width: 56.w,
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomepageScreen1()));
              },
              child: const Text(
                'Screen 1',
                style: TextStyle(color: Color.fromARGB(255, 32, 102, 159)),
              )),
          SizedBox(
            width: 10.w,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomepageScreen2()));
              },
              child: const Text(
                'Screen 2',
                style: TextStyle(color: Color.fromARGB(255, 32, 102, 159)),
              )),
          SizedBox(
            width: 10.w,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomepageScreen3()));
              },
              child: const Text(
                'Screen 3',
                style: TextStyle(color: Color.fromARGB(255, 32, 102, 159)),
              )),
          const Spacer(),
          Image.asset(
            'assets/images/more.png',
            height: 56.h,
            width: 56.w,
          ),
        ],
      ),
    ),
  );
}
