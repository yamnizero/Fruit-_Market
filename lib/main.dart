
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
