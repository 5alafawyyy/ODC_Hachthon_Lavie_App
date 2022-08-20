import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        thickness: AppSize.s1,
        color: ColorManager.gray4,
        height: AppMargin.m35,
        indent: 5,
        endIndent: 5,
      ),
    );
  }
}
