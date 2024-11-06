import 'package:flutter/material.dart';
import 'widgets/quotes_home_appbar.dart';
import 'package:random_quote_generator/features/quotes_home/presentation/views/widgets/quotes_home_body.dart';

class QuotesHomeView extends StatelessWidget {
  const QuotesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: QuotesHomeAppBar(),
      body: QuotesHomeBody(),
    );
  }
}
