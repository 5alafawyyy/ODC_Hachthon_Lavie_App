import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

class AddRemoveButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AddRemoveButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: ColorManager.whiteShadow1,
        height: AppSize.s16,
        width: AppSize.s16,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorManager.gray,
              fontSize: AppSize.s10,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
