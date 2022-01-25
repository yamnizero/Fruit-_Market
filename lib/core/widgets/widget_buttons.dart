import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

import '../constants.dart';

class WidgetGeneralButton extends StatelessWidget {
  const WidgetGeneralButton({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration:  BoxDecoration(
        color: kMainColor ,
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Center(
        child:  Text(
          text!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
