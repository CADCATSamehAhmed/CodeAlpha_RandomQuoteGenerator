import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_quote_generator/features/splash/presentation/views/splash_view.dart';
import 'core/shared_preferance/cache_helper.dart';
import 'features/quotes_home/data/repo/lists_var.dart';
import 'features/quotes_home/data/repo/quotes_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
  await CacheHelper.init();
  var api = Api();
  quotes = await api.getRandomQuotes();
  dailyQuote = await api.getTodayQuote();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashView(),
          );
        }
    );
  }
}