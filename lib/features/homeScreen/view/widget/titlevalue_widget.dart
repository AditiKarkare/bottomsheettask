import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleValueTile extends StatelessWidget {
  final String title;
  final String value;
  const TitleValueTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          SizedBox(width: 100.w, child: Text("$title. :")),
          Text(value),
        ],
      ),
    );
  }
}
