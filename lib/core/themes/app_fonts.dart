import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppFonts{

  static TextStyle haFont18 = GoogleFonts.habibi(
    color: Colors.black,
    fontSize: 20.sp,
  );
  static TextStyle haFont14 = GoogleFonts.habibi(
    color: Colors.black,
    fontSize: 16.sp,
  );
  static TextStyle haFont12 = GoogleFonts.habibi(
      color: Colors.black,
      fontSize: 14.sp,
  );
  static TextStyle laFont16 = GoogleFonts.lato(
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w900
  );
  static TextStyle laFont12 = GoogleFonts.lato(
    color: Colors.black,
    fontSize: 14.sp,
  );
}