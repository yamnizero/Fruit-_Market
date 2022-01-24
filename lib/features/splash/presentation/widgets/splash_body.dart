import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/onBoarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double >? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 51,
                color: Color(0xffffffff)),
          ),
        ),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }

   void goToNextView()
   {
     Future.delayed(const Duration(seconds: 3),()
     {
       Get.to(()=> const OnBoardingView(),transition: Transition.fade);
     });
   }
}
