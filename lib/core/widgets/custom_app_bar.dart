import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

AppBar buildAppBar({
  required String title,
  required BuildContext context,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.cairoBold19,
    ),
  );
}
