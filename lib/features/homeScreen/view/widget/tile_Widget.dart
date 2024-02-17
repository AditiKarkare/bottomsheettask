import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: const Color(0xffF5F5F5),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xff333333),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
