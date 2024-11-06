import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_quote_generator/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeIn(
          duration: const Duration(seconds: 2),
          child: Center(
            child: Image.asset(
              Images.logoBlack,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 100.h,
              width: 280.w,
            ),
          ),
        ),
      ],
    );
  }
}
