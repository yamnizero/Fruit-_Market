import 'package:flutter/material.dart';
import 'package:fruits_market/core/space_widget.dart';
import 'package:fruits_market/core/widgets/widget_buttons.dart';

import 'widget_complete_info_item.dart';

class WidgetCompleteInformationBody extends StatelessWidget {
  const WidgetCompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
           VerticalSpace(10),
          WidgetCompleteInfoItem(
            text: 'Enter your name',
          ),
          VerticalSpace(2),
          WidgetCompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          WidgetCompleteInfoItem(
            text: 'Enter your address',
            maxLines: 5,
          ),
          VerticalSpace(5),
          WidgetGeneralButton(text: 'Login'),
        ],
      ),
    );
  }
}
