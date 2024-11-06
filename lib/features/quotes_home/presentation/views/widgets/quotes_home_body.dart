import 'dart:math';
import 'package:animate_do/animate_do.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:random_quote_generator/core/themes/app_fonts.dart';
import 'package:random_quote_generator/features/quotes_home/data/repo/lists_var.dart';
import 'package:random_quote_generator/features/quotes_home/presentation/views/widgets/quote_card.dart';

class QuotesHomeBody extends StatefulWidget {
  const QuotesHomeBody({super.key});

  @override
  State<QuotesHomeBody> createState() => _QuotesHomeBodyState();
}

class _QuotesHomeBodyState extends State<QuotesHomeBody> {
  Random random = Random();
  DateTime dateTime = DateTime.now();
  int quoteIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              DateFormat('EEEE , d MMM y').format(dateTime),
              style: AppFonts.laFont16,
            ),
          ),
          subtitle: Align(
            alignment: Alignment.center,
            child: Text(
              'have a nice day !',
              style: AppFonts.laFont12,
            ),
          ),
        ),
        FadeInRight(
          child: QuoteCard(
            quoteModel: quotes[quoteIndex],
            isTodayQuote: false,
            refreshOnPressed: () {
              setState(() {
                quoteIndex = random.nextInt(49);
              });
            },
          ),
        ),
        FadeInLeft(
          child: QuoteCard(quoteModel: dailyQuote, isTodayQuote: true),
        ),
      ],
    );
  }
}
