import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/widget_buttons.dart';

import 'widget_dots_indicator.dart';
import 'widget_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody>
{
   PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(()
    {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         WidgetPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 22,
          child:  WidgetDotsIndicator(
            dotsIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible:pageController!.hasClients ? (pageController?.page == 2 ? false : true): true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const  Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child:  WidgetGeneralButton(
              text: pageController!.hasClients ? (pageController?.page == 2 ? 'Get started' : 'Next') : 'Next' ,
            ),
        ),
      ],
    );
  }
}
