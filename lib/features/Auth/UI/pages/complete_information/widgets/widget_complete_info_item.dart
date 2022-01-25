import 'package:flutter/material.dart';
import 'package:fruits_market/core/space_widget.dart';
import 'package:fruits_market/core/widgets/widget_text_field.dart';

class WidgetCompleteInfoItem extends StatelessWidget {
  const WidgetCompleteInfoItem({Key? key,
   required this.text,
    @required this.inputType,
    this.maxLines}) : super(key: key);
final String text;
final TextInputType? inputType;
final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:const TextHeightBehavior(
            applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(2),
         WidgetTextField(
            maxLines: maxLines,
            inputType: inputType,
        ),

      ],
    );
  }
}
