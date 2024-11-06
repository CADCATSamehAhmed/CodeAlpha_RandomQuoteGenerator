import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_quote_generator/core/themes/app_colors.dart';
import 'package:random_quote_generator/core/themes/app_fonts.dart';
import 'package:random_quote_generator/features/quotes_home/data/models/quote_model.dart';
import 'package:share_plus/share_plus.dart';

class QuoteCard extends StatelessWidget {
  final QuoteModel quoteModel;
  final bool isTodayQuote;
  final VoidCallback? refreshOnPressed;

  const QuoteCard({
    super.key,
    required this.quoteModel,
    required this.isTodayQuote,
    this.refreshOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 230.h), // Removed maxHeight
      width: 280.w,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 40.w),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(25).r,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: Offset(-1, -1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Let the container height grow dynamically
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isTodayQuote)
            Row(
              children: [
                Text("Today's Quote :", style: AppFonts.laFont12),
              ],
            )
          else
            SizedBox(height: 15.h),
          Flexible(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  '"${quoteModel.quote}"',
                  textAlign: TextAlign.center,
                  maxLines: 20,
                  overflow: TextOverflow.fade, // Smoothly fades long text
                  style: isTodayQuote ? AppFonts.haFont14 : AppFonts.haFont18,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              quoteModel.author,
              textAlign: TextAlign.center,
              style: AppFonts.haFont12,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  await Share.share('"${quoteModel.quote}",said by:"${quoteModel.author}"');
                },
                icon: Icon(
                  Icons.share_outlined,
                  color: AppColors.iconColor,
                  size: 25.sp,
                ),
              ),
              const Spacer(),
              if (!isTodayQuote)
                IconButton(
                  onPressed: refreshOnPressed,
                  icon: Icon(
                    Icons.refresh,
                    color: AppColors.iconColor,
                    size: 25.sp,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
