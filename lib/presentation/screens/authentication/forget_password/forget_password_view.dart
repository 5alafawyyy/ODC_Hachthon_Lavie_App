import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/custom_elevated_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              AppStrings.forgotYourPassword,
              style: getApplicattionThemeData().textTheme.headlineLarge,
            ),
            SizedBox(
              height: AppMargin.m20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p40),
              child: Text(
                AppStrings.enterYourEmailAddress,
                style: getApplicattionThemeData().textTheme.bodyLarge!.copyWith(
                      color: ColorManager.gray4,
                      fontSize: FontSize.s18,
                      fontWeight: FontWeightManager.regular,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: AppMargin.m30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: AppStrings.yourEmailAddress,
              ),
            ),
            SizedBox(
              height: AppMargin.m12,
            ),
            CustomElevatedButton(
              onPressed: () {},
              text: AppStrings.resetPassword,
            ),
          ],
        ),
      ),
    );
  }
}
