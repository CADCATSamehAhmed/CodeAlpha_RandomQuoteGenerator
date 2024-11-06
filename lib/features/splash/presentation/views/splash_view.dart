import 'dart:async';
import 'package:random_quote_generator/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:random_quote_generator/features/quotes_home/presentation/views/quotes_home_view.dart';
import 'widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const QuotesHomeView(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: const SplashBody(),
    );
  }
}
