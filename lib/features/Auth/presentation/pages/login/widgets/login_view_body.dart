import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/space_widget.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/widget_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
         const Text(
          'Fruit Market',
           style: TextStyle(
             fontFamily: 'Poppins',
             fontSize: 51,
             color: kMainColor,
           ),
        ),
        const  Expanded(child: SizedBox()),
        Row(
          children: const [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: WidgetButtonWithIcon(
                    color: Color(0xFFdb3236),
                      iconData:FontAwesomeIcons.googlePlusG,
                    text:'Log in with'
                  ),
                )
            ),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: WidgetButtonWithIcon(
                    color: Colors.blue,
                    iconData:FontAwesomeIcons.facebookF,
                    text:'Log in with'
                  ),
                )
            ),
          ],
        ),
        const  Expanded(child: SizedBox()),
      ],
    );
  }
}

