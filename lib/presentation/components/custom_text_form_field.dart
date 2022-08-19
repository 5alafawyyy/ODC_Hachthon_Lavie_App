import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  bool obscureText;
  TextEditingController? controller;
  TextInputType keyboardType;

  CustomTextFormField({
    super.key,
    required this.text,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p4),
          child: Text(
            text,
            style: getApplicattionThemeData().textTheme.labelMedium,
          ),
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
        )
      ],
    );
  }
}
