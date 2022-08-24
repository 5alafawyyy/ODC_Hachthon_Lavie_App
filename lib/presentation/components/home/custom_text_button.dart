import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/style/style_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

class CustomTextButton extends StatelessWidget {
  final String filterName;
  final void Function() onPressed;
  final bool isActive;

  const CustomTextButton({
    Key? key,
    required this.filterName,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? ColorManager.white : ColorManager.whiteShadow1,
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
      ),
      height: AppSize.s35,
      width: AppSize.s63,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style: getApplicattionThemeData().textButtonTheme.style!.copyWith(
              textStyle: MaterialStateProperty.all(
                getRegularStyle(
                  color: isActive ? ColorManager.primary : ColorManager.gray,
                  fontSize: FontSize.s16,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(
                isActive ? ColorManager.primary : ColorManager.gray2,
              ),
              backgroundColor: MaterialStateProperty.all(
                isActive ? ColorManager.white : ColorManager.whiteShadow1,
              ),
              side: isActive
                  ? MaterialStateProperty.all(
                      BorderSide(
                        color: ColorManager.primary,
                        width: AppSize.s2,
                      ),
                    )
                  : MaterialStateProperty.all(
                      const BorderSide(
                        color: ColorManager.transparent,
                      ),
                    ),
                    
            ),
        child: Text(
          filterName,
        ),
      ),
    );
  }
}
