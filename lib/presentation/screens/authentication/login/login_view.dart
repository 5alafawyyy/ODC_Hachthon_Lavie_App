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
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/login_cubit/login_cubit.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: ((context, state) {
        if (state is LoginSuccessState) {
          CacheHelper.put(
            key: AppConstants.accessToken,
            value: state.loginModel.data!.accessToken,
          );
          CacheHelper.put(
            key: AppConstants.refreshToken,
            value: state.loginModel.data!.refreshToken,
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
        } else if (state is LoginFailedState) {
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
              key: BlocProvider.of<LoginCubit>(context).formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    text: AppStrings.email,
                    keyboardType: TextInputType.emailAddress,
                    controller:
                        BlocProvider.of<LoginCubit>(context).emailController,
                    validaor:
                        BlocProvider.of<LoginCubit>(context).emailValidate,
                  ),
                  SizedBox(
                    height: AppMargin.m12,
                  ),
                  CustomTextFormField(
                    text: AppStrings.password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller:
                        BlocProvider.of<LoginCubit>(context).passwordController,
                    validaor: BlocProvider.of<LoginCubit>(context).passValidate,
                  ),
                  SizedBox(
                    height: AppMargin.m20,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LoginCubit>(context).onSubmit();
                    },
                    text: AppStrings.login,
                  ),
                  SizedBox(
                    height: AppMargin.m10,
                  ),
                  TextButton(
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .forgetPasswordScreen();
                    },
                    child: Text(
                      AppStrings.forgetPassword,
                      style: getMediumStyle(
                        color: ColorManager.primary,
                        fontSize: FontSize.s14,
                      ),
                    ),
                  ),
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
                        onpressed: () {
                          BlocProvider.of<LoginCubit>(context).googleSignIn();
                          // navigatorTo(context, Routes.layoutRoute);
                        },
                        iconAsset: IconAssets.googleIcon,
                      ),
                      SizedBox(
                        width: AppMargin.m20,
                      ),
                      CustomIconButton(
                        onpressed: () {
                          navigatorTo(context, Routes.layoutRoute);
                        },
                        iconAsset: IconAssets.facebookIcon,
                      ),
                    ],
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
