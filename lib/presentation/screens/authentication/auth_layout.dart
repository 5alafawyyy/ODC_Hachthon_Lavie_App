import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/style/style_manager.dart';
import 'package:odc_hackathon_lavie_app/core/services/services_locator.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/authentication/auth_navigation.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';

class AuthLayoutView extends StatelessWidget {
  const AuthLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: Scaffold(
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
                    const AuthNavigation()
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
          )),
    );
  }
}
