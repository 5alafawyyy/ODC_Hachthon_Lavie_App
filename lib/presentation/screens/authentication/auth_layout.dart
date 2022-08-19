import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/style/style_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';

class AuthLayoutView extends StatelessWidget {
  const AuthLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: Stack(
          clipBehavior: Clip.hardEdge,
          fit: StackFit.expand,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
              child: Column(
                children: [
                  SizedBox(
                    height: AppMargin.m170,
                  ),
                  Image.asset(
                    ImageAssets.splashlogo,
                  ),
                  SizedBox(
                    height: AppMargin.m40,
                  ),
                  BlocBuilder<AuthCubit, Widget>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              BlocProvider.of<AuthCubit>(context)
                                  .signupScreen();
                            },
                            child:
                                BlocProvider.of<AuthCubit>(context).index == 1
                                    ? Column(
                                        children: [
                                          Text(
                                            AppStrings.signUp,
                                            style: getMediumStyle(
                                              color: ColorManager.primary,
                                              fontSize: FontSize.s18,
                                            ),
                                          ),
                                          Container(
                                            height: AppSize.s12,
                                            width: AppSize.s51,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: ColorManager.primary,
                                                  width: AppSize.s3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          const Text(
                                            AppStrings.signUp,
                                          ),
                                          SizedBox(
                                            height: AppSize.s12,
                                            width: AppSize.s40,
                                          ),
                                        ],
                                      ),
                          ),
                          TextButton(
                              onPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .loginScreen();
                              },
                              child:
                                  BlocProvider.of<AuthCubit>(context).index == 0
                                      ? Column(
                                          children: [
                                            Text(
                                              AppStrings.login,
                                              style: getMediumStyle(
                                                color: ColorManager.primary,
                                                fontSize: FontSize.s18,
                                              ),
                                            ),
                                            Container(
                                              height: AppSize.s12,
                                              width: AppSize.s40,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: ColorManager.primary,
                                                    width: AppSize.s3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            const Text(
                                              AppStrings.login,
                                            ),
                                            SizedBox(
                                              height: AppSize.s12,
                                              width: AppSize.s40,
                                            ),
                                          ],
                                        )),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: AppMargin.m30,
                  ),
                  BlocBuilder<AuthCubit, Widget>(
                    builder: ((context, state) {
                      return state;
                    }),
                  ),
                ],
              ),
            ),
            Positioned(
              top: AppPadding.p0,
              right: AppPadding.p0,
              child: Image.asset(
                ImageAssets.authEdge,
                color: ColorManager.primary,
              ),
            ),
            Positioned(
              bottom: AppPadding.p55Minus,
              left: AppPadding.p5,
              child: RotatedBox(
                quarterTurns: AppPadding.p130Minus,
                child: Image.asset(
                  ImageAssets.authEdge,
                  color: ColorManager.primary,
                ),
              ),
            ),
          ],
        ));
  }
}
