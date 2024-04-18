// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:emoji_keyboard/homepage_screen2.dart';
import 'package:emoji_keyboard/list_data.dart';
import 'package:emoji_keyboard/widget/bottom_bar.dart';
import 'package:emoji_keyboard/widget/key_widget.dart';
import 'package:emoji_keyboard/widget/keyboard_widgets.dart';
import 'package:emoji_keyboard/widget/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomepageWidget extends StatelessWidget {
  HomepageWidget(
      {super.key,
      required this.typedMessage,
      required this.keyboard,
      required this.controller,
      required this.topBarOnTap});
  Widget keyboard;
  VoidCallback topBarOnTap;

  FlutterTts flutterTts = FlutterTts();

  final TextEditingController controller;

  Color color = const Color.fromRGBO(246, 245, 246, 1);

  String typedMessage = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topBar(controller, topBarOnTap),
        Container(
          width: double.infinity,
          height: 1.h,
          color: Colors.grey,
        ),
        SizedBox(
          height: 30.h,
        ),
        keyboard,
        SizedBox(height: 20.h),
        Container(
          width: double.infinity,
          height: 1.h,
          color: Colors.grey,
        ),
        Spacer(),
        bottomBar(context),
        Spacer()
      ],
    );
  }
}
