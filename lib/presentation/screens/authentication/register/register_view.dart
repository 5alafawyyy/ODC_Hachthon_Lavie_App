import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/navigation/navigation.dart';
import 'package:odc_hackathon_lavie_app/core/design/style/style_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/network/local/cache_helper.dart';
import 'package:odc_hackathon_lavie_app/core/routes/routes_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_constants.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/authentication/custom_divider.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/authentication/custom_icon_button.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/authentication/custom_text_form_field.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/custom_elevated_button.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/signup_cubit/signup_cubit.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: ((context, state) {
        if (state is SignupSuccessState) {
          CacheHelper.put(
            key: AppConstants.accessToken,
            value: state.signUpModel.data!.accessToken,
          );
          CacheHelper.put(
            key: AppConstants.refreshToken,
            value: state.signUpModel.data!.refreshToken,
          );
          AppConstants.userToken = CacheHelper.get(
            key: AppConstants.accessToken,
          );
          AppConstants.userRefreshToken = CacheHelper.get(
            key: AppConstants.refreshToken,
          );

          navigatorAndRemove(
            context,
            Routes.layoutRoute,
          );
        } else if (state is SignupFailedState) {
          showTopSnackBar(
            context,
            CustomSnackBar.info(
              message: state.message,
              backgroundColor: ColorManager.primary,
            ),
          );
        } else {}
      }),
      builder: (context, state) {
        return Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: BlocProvider.of<SignupCubit>(context).formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          text: AppStrings.firstName,
                          keyboardType: TextInputType.text,
                          controller: BlocProvider.of<SignupCubit>(context)
                              .firstNameController,
                          validaor: BlocProvider.of<SignupCubit>(context)
                              .firstNameValidate,
                        ),
                      ),
                      SizedBox(
                        width: AppMargin.m14,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          text: AppStrings.lastName,
                          keyboardType: TextInputType.text,
                          controller: BlocProvider.of<SignupCubit>(context)
                              .lastNameController,
                          validaor: BlocProvider.of<SignupCubit>(context)
                              .lastNameValidate,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppMargin.m10,
                  ),
                  CustomTextFormField(
                    text: AppStrings.eMail,
                    keyboardType: TextInputType.emailAddress,
                    controller:
                        BlocProvider.of<SignupCubit>(context).emailController,
                    validaor:
                        BlocProvider.of<SignupCubit>(context).emailValidate,
                  ),
                  SizedBox(
                    height: AppMargin.m10,
                  ),
                  CustomTextFormField(
                    text: AppStrings.password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: BlocProvider.of<SignupCubit>(context)
                        .passwordController,
                    validaor:
                        BlocProvider.of<SignupCubit>(context).passValidate,
                  ),
                  SizedBox(
                    height: AppMargin.m10,
                  ),
                  CustomTextFormField(
                    text: AppStrings.confirmPassword,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: BlocProvider.of<SignupCubit>(context)
                        .confirmPasswordController,
                    validaor: BlocProvider.of<SignupCubit>(context)
                        .confirmatioPasswordsValidate,
                  ),
                  SizedBox(
                    height: AppMargin.m18,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      BlocProvider.of<SignupCubit>(context).onSubmit();
                    },
                    text: AppStrings.signUp,
                  ),
                  SizedBox(
                    height: AppMargin.m10,
                  ),
                  // TextButton(
                  //   onPressed: () {
                  //     BlocProvider.of<AuthCubit>(context)
                  //         .forgetPasswordScreen();
                  //   },
                  //   child: Text(
                  //     AppStrings.forgetPassword,
                  //     style: getMediumStyle(
                  //       color: ColorManager.primary,
                  //       fontSize: FontSize.s14,
                  //     ),
                  //   ),
                  // ),
                  Row(
                    children: [
                      const CustomDivider(),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: AppPadding.p4),
                        child: Text(
                          AppStrings.orContinueWith,
                          style: getApplicattionThemeData().textTheme.bodySmall,
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        onpressed: () {},
                        iconAsset: IconAssets.googleIcon,
                      ),
                      SizedBox(
                        width: AppMargin.m20,
                      ),
                      CustomIconButton(
                        onpressed: () {},
                        iconAsset: IconAssets.facebookIcon,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppMargin.m20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
