import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_quote_generator/core/constants/images.dart';

class QuotesHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuotesHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,20,20,0).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Images.leaf,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            height: 40.h,
            width: 40.w,
          ),
          Image.asset(
            Images.logoBlack,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            height: 50.h,
            width: 180.w,
          ),
          Image.asset(
            Images.butterfly,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            height: 40.h,
            width: 40.w,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(130.h);
}
