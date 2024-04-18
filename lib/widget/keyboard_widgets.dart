import 'package:emoji_keyboard/widget/key_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color color = const Color.fromRGBO(246, 245, 246, 1);

Widget keyboardWidget1(BuildContext context, List<String> list,
    String typedMessage, TextEditingController _controller) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height * 1.5),
          crossAxisCount: 8,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
        ),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          index == 6 ||
                  index == 7 ||
                  index == 14 ||
                  index == 15 ||
                  index == 22 ||
                  index == 23 ||
                  index == 30 ||
                  index == 31
              ? color = Color.fromRGBO(255, 249, 201, 1)
              : color = const Color.fromRGBO(246, 245, 246, 1);
          return index == 5 ||
                  index == 8 ||
                  index == 10 ||
                  index == 11 ||
                  index == 12 ||
                  index == 17 ||
                  index == 21 ||
                  index == 26
              ? InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: textKeyWidget(
                    textVal: list[index],
                    containerClr: color,
                  ),
                )
              : InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: KeyWidget(
                    textVal: list[index],
                    containerClr: color,
                    image: "assets/images/${index + 1}.png",
                  ),
                );
        },
      ),
    ),
  );
}

Widget keyboardWidget2(BuildContext context, List<String> list,
    String typedMessage, TextEditingController _controller) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height * 1.5),
          crossAxisCount: 8,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
        ),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          index == 6 ||
                  index == 7 ||
                  index == 14 ||
                  index == 15 ||
                  index == 22 ||
                  index == 23 ||
                  index == 30 ||
                  index == 31
              ? color = Color.fromRGBO(255, 249, 201, 1)
              : color = const Color.fromRGBO(246, 245, 246, 1);
          return index == 2 ||
                  index == 3 ||
                  index == 8 ||
                  index == 9 ||
                  index == 16 ||
                  index == 18 ||
                  index == 19
              ? InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: textKeyWidget(
                    textVal: list[index],
                    containerClr: color,
                  ),
                )
              : InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: KeyWidget(
                    textVal: list[index],
                    containerClr: color,
                    image: "assets/screen3/${index + 1}.png",
                  ),
                );
        },
      ),
    ),
  );
}

Widget keyboardWidget3(BuildContext context, List<String> list,
    String typedMessage, TextEditingController _controller) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height * 1.5),
          crossAxisCount: 8,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
        ),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          index == 6 ||
                  index == 7 ||
                  index == 14 ||
                  index == 15 ||
                  index == 22 ||
                  index == 23 ||
                  index == 30 ||
                  index == 31
              ? color = Color.fromRGBO(255, 249, 201, 1)
              : color = const Color.fromRGBO(246, 245, 246, 1);
          return index == 5 ||
                  index == 8 ||
                  index == 10 ||
                  index == 11 ||
                  index == 12 ||
                  index == 17 ||
                  index == 21 ||
                  index == 26
              ? InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: textKeyWidget(
                    textVal: list[index],
                    containerClr: color,
                  ),
                )
              : InkWell(
                  onTap: () {
                    typedMessage = typedMessage + ' ' + list[index];
                    _controller.text = typedMessage;
                  },
                  child: KeyWidget(
                    textVal: list[index],
                    containerClr: color,
                    image: "assets/images/${index + 1}.png",
                  ),
                );
        },
      ),
    ),
  );
}
