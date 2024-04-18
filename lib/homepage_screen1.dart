// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:emoji_keyboard/list_data.dart';
import 'package:emoji_keyboard/widget/homepage_widget.dart';
import 'package:emoji_keyboard/widget/keyboard_widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_tts/flutter_tts.dart';

class HomepageScreen1 extends StatefulWidget {
  const HomepageScreen1({super.key});

  @override
  State<HomepageScreen1> createState() => _HomepageScreen1State();
}

class _HomepageScreen1State extends State<HomepageScreen1> {
  FlutterTts flutterTts = FlutterTts();
  final TextEditingController _controller = TextEditingController();
  Color color = const Color.fromRGBO(246, 245, 246, 1);

  String typedMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: HomepageWidget(
        typedMessage: typedMessage,
        keyboard:
            keyboardWidget1(context, screen1List, typedMessage, _controller),
        controller: _controller,
        topBarOnTap: () {
          _speak(_controller.text);
        },
      )),
    );
  }

  Future _speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }
}
