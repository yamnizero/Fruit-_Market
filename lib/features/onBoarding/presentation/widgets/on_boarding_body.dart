import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: const Text(
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
      ],
    );
  }
}
