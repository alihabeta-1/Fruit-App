import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffC9CECF),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Text(
            'أو',
            style: TextStyles.cairoSemiBold16.copyWith(),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffC9CECF),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
